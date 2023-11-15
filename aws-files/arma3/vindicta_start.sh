#!/bin/bash
mods=""

# Read the mod list from scp_mods.txt and append each line to "mods" variable
while IFS= read -r line; do
  mods+="$line;"
done < main_mods.txt

# Start the server with the mod list REMOVED -cfg=performance.cfg
./arma3server_x64 -name=vindicta -config=vindicta.cfg -cfg=performance.cfg -limitFPS=700 -enableHT -loadMissionToMemory -autoInit -hugepages -serverMod="2162811561" -mod="$mods;gm;vn"



