#!/bin/sh
set -eu
TMP=/tmp/user.csv.$$ 
OUT=/tmp/DMRIds.dat.$$ 
URL="https://database.radioid.net/static/user.csv"

uclient-fetch -qO "$TMP" "$URL"

awk -F',' 'NR>1 {id=$1; cs=$2; name=$3; cty=$5; gsub(/^"|"$/, "", id); gsub(/^"|"$/, "", cs); gsub(/^"|"$/, "", name); gsub(/^"|"$/, "", cty); if (id ~ /^[0-9]+$/ && cs != "") print id "\t" cs "\t" name "\t" cty; }' "$TMP" > "$OUT"

[ -s "$OUT" ] && mv "$OUT" /etc/mmdvm/DMRIds.dat
rm -f "$TMP" "$OUT"
/etc/init.d/dmrid restart >/dev/null 2>&1 || true
logger -t mmdvm "DMRIds.dat updated"
