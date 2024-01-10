wget -O - "https://api.open5e.com/classes" | jq '[.results[] | {name, desc}]' | in2csv -f json > types.csv
wget -O - "https://api.open5e.com/weapons/" | jq '[.results[] | {name, slug, category, weight, damage_dice, cost}]' | in2csv -f json > items.csv
