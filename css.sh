#!/bin/bash
#Getting Started
sudo apt-get update -y && sudo apt-get upgrade -y && echo "1 - Get Update"
sudo apt-get install -y lib32gcc1 libc6-i386 && echo "2 - Download and install packages"
sudo adduser steam && echo "3 - Add user -steam-"
su steam && echo "4 - Change User to -steam-"
#Downloading SteamCMD
cd /home/steam && echo "Change to home steam"
mkdir SteamCMD && echo "Create directory SteamCMD"
cd steamCMD && wget http://media.steampowered.com/installer/steamcmd_linux.tar.gz && echo "Get SteamCMD"
archive:tar -xvzf steamcmd_linux.tar.gz && echo "Unarchive SteamCMD"
#Running SteamCMD
./steamcmd.sh && echo "Run steamcmd.sh"
login anonymous
force_install_dir ./css/
app_update 232330 validate
quit
#Running the CS:S server
cd css && echo "Go to css directory"
./srcds_run -console -game cstrike -maxplayers 20 - port 27015 +map de_dust2 && echo "Server started"
