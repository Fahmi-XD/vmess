#!/bin/bash
cd
dateFromServer=$(curl -v --insecure --silent https://google.com/ 2>&1 | grep Date | sed -e 's/< Date: //')
biji=`date +"%Y-%m-%d" -d "$dateFromServer"`
REPO="https://raw.githubusercontent.com/Fahmi-XD/vmess/main/"
###########- COLOR CODE -##############
echo -e " [INFO] Downloading File"
sleep 2
rm /usr/local/sbin/*
wget -q ${REPO}menu.zip 
wget -q -O /usr/bin/enc "https://raw.githubusercontent.com/MasPras0/scku/main/install/encrypt" ; chmod +x /usr/bin/enc
#7z x -pas123@Rht menu.zip
unzip -qq menu.zip >/dev/null
chmod +x menu/*
enc menu/*
mv menu/* /usr/local/sbin
dos2unix /usr/local/sbin/* &>/dev/null
rm -rf menu
rm -rf menu.zip
rm -rf /usr/local/sbin/*~
rm -rf /usr/local/sbin/gz*
rm -rf /usr/local/sbin/*.bak
serverV=$( curl -sS ${REPO}versi  )
echo $serverV > /opt/.ver
echo -e " [INFO] Download File Successfully"
sleep 2
exit
