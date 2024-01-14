#!/bin/bash

if [ ! -d "/root/.jupyter" ]; then
        mkdir -p "/root/.jupyter"
fi

if [ ! -d "/root/.vnc" ]; then
        mkdir -p "/root/.vnc"
fi

if [ ! -f "/dev/tty0" ]; then
        touch "/dev/tty0"
fi
cp -fp sshd_config.bak /etc/ssh/sshd_config.bak
cp -fp reset_vnc.sh.bak /root/reset_vnc.sh.bak
cp -fp jupyter_notebook_config.py.bak /root/.jupyter/jupyter_notebook_config.py.bak
cp -fp start_vnc_jupyter.sh.bak /usr/local/bin/start_vnc_jupyter.sh.bak
cp -fp set_vnc_passwd.sh.bak /root/set_vnc_passwd.sh.bak
cp -f pycharm/pycharm.desktop /usr/share/applications/pycharm.desktop