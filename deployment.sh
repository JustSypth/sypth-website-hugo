#!/bin/bash

if [ "$(id -u)" -ne 0 ]; then
    echo "This script must be run with sudo or as root."
    exit 1  # Exit with a non-zero status to indicate failure
fi

JSON_FILE="public/date.json"

CURRENT_DATE=$(TZ="Europe/Bratislava" date +"%Y-%m-%dT%H:%M")
jq --arg new_date "$CURRENT_DATE" '.date = $new_date' "$JSON_FILE" > tmp.$$.json && mv tmp.$$.json "$JSON_FILE"

rm -fr /var/www/sypth
cp -r public /var/www/sypth/
systemctl restart apache2

echo "Finished deployment. (Hooray :3)"
