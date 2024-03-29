#! /bin/sh

printf "Downloading nessceary files.\n"
curl -O https://raw.github.com/logentries/le/master/le
curl -O https://raw.github.com/StephenHynes7/le_freebsd/master/logentries
chmod +x le
chmod +x logentries

printf "Moving files.\n"

mv le /usr/local/bin/
mv logentries /etc/rc.d/

echo "logentries_enable=\"YES\"" >> /etc/rc.conf

printf "Installtion complete, reboot your machine for changes to take effect.\n"
