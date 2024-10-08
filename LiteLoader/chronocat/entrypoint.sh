#!/bin/bash

# 安装 chronocat
# 需要挂载卷
if [ ! -f "/LiteLoader/plugins/*Chronocat*/manifest.json" ]; then
    unzip /tmp/chronocat-llqqnt-engine-chronocat-api.zip  -d /LiteLoader/plugins/
    unzip /tmp/chronocat-llqqnt-engine-chronocat-event.zip  -d /LiteLoader/plugins/
    unzip /tmp/chronocat-llqqnt.zip -d /LiteLoader/plugins/
    unzip /tmp/chronocat-llqqnt-engine-media.zip -d /LiteLoader/plugins/
    unzip /tmp/chronocat-llqqnt-engine-crychiccat.zip -d /LiteLoader/plugins/
fi

bash /root/start.sh