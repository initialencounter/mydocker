#!/bin/bash

# 安装 Liteloader
if [ ! -f "/LiteLoader/package.json" ]; then
    mkdir -p /LiteLoader && \
    unzip /tmp/LiteLoaderQQNT.zip -d /LiteLoader && \
    sed -i '1s/^/require("\/LiteLoader");\n/' /opt/QQ/resources/app/app_launcher/index.js
fi

# 安装 chronocat
# 需要挂载卷
if [ ! -f "/LiteLoader/plugins/*Chronocat*/manifest.json" ]; then
    unzip /tmp/chronocat-llqqnt-engine-chronocat-api.zip  -d /LiteLoader/plugins/
    unzip /tmp/chronocat-llqqnt-engine-chronocat-event.zip  -d /LiteLoader/plugins/
    unzip /tmp/chronocat-llqqnt-engine-poke.zip -d /LiteLoader/plugins/
    unzip /tmp/chronocat-llqqnt.zip -d /LiteLoader/plugins/
fi

bash /root/start.sh &
cd /root/koishi
source /etc/profile
yarn && yarn start