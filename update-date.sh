#!/bin/bash

# Specify the JSON file you want to modify
JSON_FILE="hugo/static/date.json"

# Get the current date (you can modify the format as needed)
CURRENT_DATE=$(date +"%Y-%m-%dT%H:%M")

# Use jq to update the date field in the JSON file
# Assuming the JSON file has a field named "date", modify this to your actual field name
jq --arg new_date "$CURRENT_DATE" '.date = $new_date' "$JSON_FILE" > tmp.$$.json && mv tmp.$$.json "$JSON_FILE"

echo "Date updated to $CURRENT_DATE in $JSON_FILE"