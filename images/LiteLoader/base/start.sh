#!/bin/bash

# 安装 Liteloader
if [ ! -f "/LiteLoader/package.json" ]; then
    mkdir -p /LiteLoader
    unzip /tmp/LiteLoaderQQNT.zip -d /LiteLoader
fi

# 安装 whale
if [ ! -f "/LiteLoader/plugins/whale/manifest.json" ]; then
    mkdir -p /LiteLoader/plugins/whale
    unzip /tmp/whale.zip -d /LiteLoader/plugins/whale
fi

echo "nameserver 114.114.114.114" > /etc/resolv.conf
echo "nameserver 223.5.5.5" >> /etc/resolv.conf
mkdir /run/user/$(id -u)
export DISPLAY=:1
export XDG_RUNTIME_DIR=/run/user/$(id -u)
export DBUS_SESSION_BUS_ADDRESS=unix:path=$XDG_RUNTIME_DIR/bus
chmod 700 $XDG_RUNTIME_DIR
chown $(id -un):$(id -gn) $XDG_RUNTIME_DIR

rm -f /tmp/.X1-lock
mkdir -p ~/.vnc
service dbus start
sleep 2
Xvfb :1 -screen 0 1080x760x16 &
sleep 2
dbus-daemon --session --address=$DBUS_SESSION_BUS_ADDRESS --nofork --nopidfile --syslog-only &
sleep 2
fluxbox &
sleep 2
if [ "$ENABLE_VNC" ]; then
    x11vnc -display :1 -noxrecord -noxfixes -noxdamage -forever -rfbauth ~/.vnc/passwd &
    x11vnc -storepasswd $VNC_PASSWD ~/.vnc/passwd
fi
sleep 2
if [ "$ENABLE_NOVNC" ]; then
    nohup /opt/noVNC/utils/novnc_proxy --vnc localhost:5900 --listen 6081 --file-only &
fi
sleep 2
qq --no-sandbox
