read -p "Static or Public?: 1/2 " choice

if [ $choice == "1" ]; then
    JSON_FILE="hugo/static/date.json"
else
    JSON_FILE="public/date.json"
fi

CURRENT_DATE=$(TZ="Europe/Bratislava" date +"%Y-%m-%dT%H:%M:%S")
jq --arg new_date "$CURRENT_DATE" '.date = $new_date' "$JSON_FILE" > tmp.$$.json && mv tmp.$$.json "$JSON_FILE"