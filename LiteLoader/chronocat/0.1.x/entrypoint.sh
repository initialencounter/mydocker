#!/bin/bash

# 安装 Liteloader
if [ ! -f "/LiteLoader/package.json" ]; then
    mkdir -p /LiteLoader && \
    unzip /tmp/LiteLoaderQQNT.zip -d /LiteLoader
fi

# 安装 chronocat
# 需要挂载卷
if [ ! -f "/LiteLoader/plugins/*Chronocat*/manifest.json" ]; then
    unzip /tmp/chronocat-llqqnt.zip -d /LiteLoader/plugins/
fi

bash /root/start.sh