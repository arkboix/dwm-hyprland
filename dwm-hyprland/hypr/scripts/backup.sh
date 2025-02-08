#!/bin/bash
echo [LOG] Starting Backup Process
cd $HOME
echo [LOG] Changed directory into ~
echo [LOG] Looking for existing backups
find backups
echo [LOG] deleting existing backups
rm -rf backups
echo [LOG] Creating new backups folder
mkdir backups
echo [LOG] Backing up .config folder into ~/backups
cp -r .config/* backups
echo [LOG] Backing up ~/wallpapers folder into ~/backups
cp -r wallpapers backups
echo [LOG] Job Finished
notify-send "Configuration backed up in ~/backups"
