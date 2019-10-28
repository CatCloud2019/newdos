#!/bin/bash
wget https://raw.githubusercontent.com/CatCloud2019/newdos/master/hosts/ipv4/hosts -O /tmp/hosts&&echo "下载成功"||exit 0
mv /etc/hosts /etc/hosts.bak
cp /tmp/hosts /etc/hosts
