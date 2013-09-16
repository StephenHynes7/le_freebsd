#!/usr/bin/env bash


printf "Downloading nessceary files"
curl -O https://raw.github.com/logentries/le/master/le
curl -O https://raw.github.com/StephenHynes7/le_freebsd/master/le.sh
chmod +x le*

printf "Moving files"

mv le /usr/bin/
mv le.sh /etc/rc.d/

echo "logentries_enable=\"YES\"" >> /etc/rc.conf

printf "Installtion complete, reboot your machine for changes to take effect"
