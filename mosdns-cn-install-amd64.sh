#!/bin/bash
apt update
apt install -y unzip
mkdir -p /opt/mosdns-cn
cd /opt/mosdns-cn
wget https://github.com/IrineSistiana/mosdns-cn/releases/latest/download/mosdns-cn-linux-amd64.zip
wget https://github.com/Loyalsoldier/v2ray-rules-dat/releases/latest/download/geoip.dat
wget https://github.com/Loyalsoldier/v2ray-rules-dat/releases/latest/download/geosite.dat
wget https://raw.githubusercontent.com/allanchen2019/mosdns-cn-debian-install/main/my-config.yaml
unzip mosdns-cn-linux-amd64.zip
./mosdns-cn --service install --config my-config.yaml
./mosdns-cn --service start
systemctl status mosdns-cn.service