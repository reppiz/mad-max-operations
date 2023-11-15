#!/bin/bash
mods=""

# Read the mod list from scp_mods.txt and append each line to "mods" variable
while IFS= read -r line; do
  echo "workshop_download_item 107410 $line validate"
done < /home/steam/arma3/main_mods.txt


