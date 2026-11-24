# Personal OpenSEO deployment

Fork-only folder. Upstream never touches `selfhost/`, so merges stay clean. No secrets live here; they are in `.env.selfhost` (gitignored) and the macOS Keychain.

| Thing | Value |
| --- | --- |
| App | https://open-seo-selfhost.ashishrao2598.workers.dev |
| MCP | `…/mcp` (OAuth, same account as the app) |
| Health | `…/api/health` |
| Cloudflare account | `9abfdeed53bc35730f5d9caf13eeb131`, Workers Free plan |
| Alchemy stage | `selfhost` (D1 `open-seo-db-selfhost`, KV, R2, Workers `open-seo-selfhost` + `-audit`) |
| Admin login | `ashishrao2598@gmail.com`; password: `security find-generic-password -s openseo-selfhost -w` |
| Google Cloud project | `openseo-selfhost-059fec` (owner ashishrao2598@gmail.com, no org): Search Console, Analytics Admin, Analytics Data APIs |
| Upstream | `git remote upstream` = every-app/open-seo |

## Setup checklist

- [x] Deploy with password sign-in, registration closed after admin creation
- [x] Operator and crawler secrets generated in `.env.selfhost`
- [x] Skills: `plugins/openseo/skills/*` symlinked into `~/.claude/skills` and `~/.codex/skills` (update with `git pull`)
- [x] MCP added: Claude Code (`claude mcp add … openseo`, user scope), Codex (`~/.codex/config.toml`); hosted `openseo@openseo` Claude plugin disabled
- [x] DataForSEO key verified (balance check); [ ] account daily spending limit set (Ashish, app.dataforseo.com)
- [x] Google OAuth client in `.env.selfhost`, deployed
- [x] MCP OAuth done: Claude Code verified (`whoami` → self-hosted); Codex logged in, test call blocked by Codex's `model` setting
- [x] Unclench project `2e101a2b-55da-4328-bb27-0b8db8d7aee7`, context, baseline ($0.71), roadmap
- [x] Unclench GSC (`sc-domain:unclench.ai`) + GA4 (`554695119`) connected and verified via MCP

## Deploy / update

The pinned alchemy (beta.61) reads `~/.alchemy/profiles.json`, but a newer alchemy elsewhere on this machine (kite-website, beta.87) migrated logins to `~/.alchemy/profiles/default/cloudflare.json`. So deploys reuse that login's OAuth token as env credentials and skip the preflight, which only checks the old file:

```sh
pnpm build:report-widgets && pnpm exec vite build --mode selfhost && pnpm exec tsc --noEmit
eval "$(python3 -c "import json,os;v=json.load(open(os.path.expanduser('~/.alchemy/profiles/default/cloudflare.json')))['values'];print('export CLOUDFLARE_API_TOKEN='+v['access']+' CLOUDFLARE_ACCOUNT_ID='+v['accountId'])")"
CI=1 pnpm alchemy deploy deploy/alchemy/alchemy.run.ts --env-file .env.selfhost --stage selfhost --yes
```

If the token has expired, refresh it by running any alchemy command from kite-website (or `alchemy login` there). Once upstream bumps alchemy past the profile migration, plain `pnpm deploy:selfhost --yes` works again.

Pull upstream:

```sh
git fetch upstream && git merge upstream/main && pnpm install   # then the deploy above
```

After merging, re-check `deploy/.env.selfhost.example` for new variables and read `docs/release-notes/`.

## Spending controls

Self-hosted OpenSEO does not meter or cap DataForSEO; the app calls it ungated. Controls, in order:

1. **DataForSEO account limits** (app.dataforseo.com → API access / limits): daily spend cap. This is the hard stop.
2. **Small balance.** Top up in small amounts; a call fails when the balance is empty.
3. **Ledger.** `selfhost/spend.sh <product> "<note>"` before and after each research batch; `selfhost/spend.sh report` gives spend per product. Agents running OpenSEO skills should do the same.
4. **Estimate first.** Use `estimate_rank_tracker_cost` / `estimate_ai_visibility_cost` before creating trackers. Site audits and GSC/GA4 cost nothing at DataForSEO.

For per-call prices, see dataforseo.com/pricing. The ledger shows what a workflow actually costs.

## Onboard another product

One OpenSEO project per product. Everything (keywords, audits, trackers, reports, project context, GSC site, GA4 property) is scoped to the project, so products stay separate.

1. In Claude Code or Codex, run the `seo-project-setup` skill: "Set up an OpenSEO project for https://example.com". It creates the project, researches the site, and saves positioning, competitors and key pages into project context.
2. Integrations → connect Search Console and GA4 for that project (the Google account must have access to the property).
3. Write `selfhost/products/<product>.md`: one paragraph of positioning, ICP, competitors, and the roadmap link.
4. `selfhost/spend.sh <product> "start"`, run `seo-audit`, then `selfhost/spend.sh <product> "baseline"`.

## Operations

- Logs: `pnpm exec wrangler tail open-seo-selfhost` (audits: `open-seo-selfhost-audit`).
- Password reset: `printf '%s\n' "$pw" | OPENSEO_URL=https://open-seo-selfhost.ashishrao2598.workers.dev pnpm selfhost:admin reset-password <email>`.
- Invite a teammate: Team settings → copy invitation link.
- Teardown (deletes data): `pnpm alchemy destroy deploy/alchemy/alchemy.run.ts --env-file .env.selfhost --stage selfhost`.
- Workers Free limit: audits stop at about 40 pages and AI visibility checks may fail. Workers Paid ($5/month) lifts it; redeploy after upgrading.
