#!/bin/bash

if [ "$(id -u)" -ne 0 ]; then
    echo "This script must be run with sudo or as root."
    exit 1  # Exit with a non-zero status to indicate failure
fi


rm -fr /var/www
mv static /var/www
systemctl restart apache2


JSON_FILE="static/date.json"

CURRENT_DATE=$(date +"%Y-%m-%dT%H:%M")
jq --arg new_date "$CURRENT_DATE" '.date = $new_date' "$JSON_FILE" > tmp.$$.json && mv tmp.$$.json "$JSON_FILE"

echo "Finished deployment. (Hooray :3)"
