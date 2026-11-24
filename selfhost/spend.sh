#!/bin/sh
# DataForSEO spend ledger. OpenSEO self-host has no spend cap or usage log, so
# measure at the provider: snapshot the balance around each piece of work.
#   selfhost/spend.sh unclench "baseline research"   -> appends a row
#   selfhost/spend.sh report                         -> spend per product
# Spend since the previous row is charged to this row's product, so snapshot
# before and after each batch. /v3/appendix/user_data is free. Ledger: selfhost/spend.csv.
set -eu
cd "$(dirname "$0")"
LEDGER=spend.csv

if [ "${1:-}" = "report" ]; then
  # Spend for a row = previous row's balance - this row's balance (top-ups show as negative).
  awk -F, 'NR>1 { if (prev != "") { d = prev - $4; spent[$2] += d } prev = $4 }
    END { for (p in spent) printf "%-12s $%.4f\n", p, spent[p] }' "$LEDGER"
  exit 0
fi

KEY=$(sed -n 's/^DATAFORSEO_API_KEY=//p' ../.env.selfhost)
BAL=$(curl -sf -H "Authorization: Basic $KEY" https://api.dataforseo.com/v3/appendix/user_data |
  python3 -c 'import json,sys; print(json.load(sys.stdin)["tasks"][0]["result"][0]["money"]["balance"])')
[ -f "$LEDGER" ] || echo "utc,product,note,balance_usd" > "$LEDGER"
echo "$(date -u +%FT%TZ),${1:?product},$(printf %s "${2:-}" | tr , ";"),$BAL" >> "$LEDGER"
echo "balance \$$BAL"
