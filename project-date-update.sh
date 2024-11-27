#!/bin/bash

JSON_FILE="hugo/static/date.json"

CURRENT_DATE=$(TZ="Europe/Bratislava" date +"%Y-%m-%dT%H:%M")
jq --arg new_date "$CURRENT_DATE" '.date = $new_date' "$JSON_FILE" > tmp.$$.json && mv tmp.$$.json "$JSON_FILE"

echo "Updated time for the project folder"
