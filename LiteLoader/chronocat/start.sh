#!/bin/bash

# 安装 Liteloader
if [ ! -f "/LiteLoader/package.json" ]; then
    mkdir -p /LiteLoader && \
    unzip /tmp/LiteLoaderQQNT.zip -d /LiteLoader && \
    sed -i '1s/^/require("\/LiteLoader");\n/' /opt/QQ/resources/app/app_launcher/index.js
fi

# 安装 chronocat
# 需要挂载卷
if [ ! -f "/LiteLoader/plugins/*chronocat*/manifest.json" ]; then
    unzip /root/chronocat.zip -d /LiteLoader/plugins/
fi

service dbus start
rm -f /tmp/.X1-lock
export DISPLAY=:1
Xvfb :1 -screen 0 720x512x16 &
fluxbox &
sleep 2
x11vnc -display :1 -noxrecord -noxfixes -noxdamage -forever -rfbauth ~/.vnc/passwd &
sleep 2
nohup /opt/noVNC/utils/novnc_proxy --vnc localhost:5900 --listen 6081 --file-only &
sleep 2
x11vnc -storepasswd $VNC_PASSWD ~/.vnc/passwd
sleep 2
qq --no-sandbox