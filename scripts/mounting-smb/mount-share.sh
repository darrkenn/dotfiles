#!/bin/bash

FILES_LOCATION="/home/darragh/share-files"
MUSIC_LOCATION="/home/darragh/share-music"
IP="//192.168.1.137"
CF="/home/darragh/.smbcredentials"

if [ "$1" = "files" ]; then
  echo "Mounting files share"
  sudo mount -t cifs "$IP/files" "$FILES_LOCATION" \
    -o credentials="$CF",iocharset=utf8,uid=darragh,gid=darragh,file_mode=0660,dir_mode=0770,noperm
elif [ "$1" = "music" ]; then
  echo "Mounting music share"
  sudo mount -t cifs "$IP/music" "$MUSIC_LOCATION" \
    -o credentials="$CF",iocharset=utf8,uid=darragh,gid=darragh,file_mode=0660,dir_mode=0770,noperm
else
  echo "Unknown mount or none provided"
fi
