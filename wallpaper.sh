#!/bin/bash
for user in /home/*
do
  uid=$(basename "$user")
  homedir=$(eval echo ~$uid)
  su -c "gsettings set org.gnome.desktop.background picture-uri file:/usr/share/backgrounds/Telecom_bienvenida_wallpaper.png" $uid
done
