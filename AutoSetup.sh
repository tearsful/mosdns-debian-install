#!/bin/bash
set -euo pipefail
clear

echo "下载依赖……"
apt update > /dev/null
apt install wget git unzip pip -y > /dev/null
echo "克隆库……"
git clone https://github.com/allanchen2019/mosdns-debian-install.git /opt/mosdns > /dev/null
chmod 777 -R /opt/mosdns
echo "执行安装……"
bash /opt/mosdns/install-mosdns.sh
echo "安装完成!"
rm -rf ./AutoSetup.sh
