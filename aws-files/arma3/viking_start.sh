#!/bin/bash
mods=""

# Read the mod list from scp_mods.txt and append each line to "mods" variable
while IFS= read -r line; do
  mods+="$line;"
done < viking_mods.txt

# Start the server with the mod list REMOVED -cfg=performance.cfg
./arma3server_x64 -name=test -config=server.cfg -cfg=performance.cfg -limitFPS=700 -noLogs -enableHT -loadMissionToMemory -autoInit -hugepages -mod="$mods;gm;vn"



