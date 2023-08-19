#!/bin/bash
clear
set -euo pipefail
echo "~~~~~~~~~~"
echo "安装mosdns"
echo "~~~~~~~~~~"
echo "下载依赖……"
apt update
apt install wget git unzip pip -y
echo "克隆库……"
git clone https://github.com/tearsful/mosdns-debian-install.git /opt/mosdns
chmod 777 -R /opt/mosdns
echo "执行安装……"
bash /opt/mosdns/install-mosdns.sh

if systemctl status mosdns.service |grep -q "running"; then
        echo "~~~~~~~~~~~~~~~~~~~~~~"
        echo "安装完成，mosdns已运行！"
        echo "~~~~~~~~~~~~~~~~~~~~~~"
    else
        echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
        echo "Emm………好像哪里不太对，mosdns没运行………"
        echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
fi
rm -rf ./AutoSetup.sh
