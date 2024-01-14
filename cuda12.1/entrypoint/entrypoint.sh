#!/bin/bash
# network config
export PATH=/opt/miniconda3/bin/:$PATH
export USER="root"
conda deactivate

if [ "$SSH_PORT" ]; then
    cp -f /etc/ssh/sshd_config.bak /etc/ssh/sshd_config
    sed -i "s/SSH_PORT/$SSH_PORT/" /etc/ssh/sshd_config
fi

service ssh start
#password config
printf "$ALL_PASSWD\n$ALL_PASSWD\n\n" | passwd

#vnc password config
cp -f /root/set_vnc_passwd.sh.bak /root/set_vnc_passwd.sh
sed -i "s/VNC_PASSWD/$ALL_PASSWD/" /root/set_vnc_passwd.sh
expect /root/set_vnc_passwd.sh
# vnc 
if [ "$VNC_PORT" ]; then
    vnc_port=`expr $VNC_PORT - 5900`
    cp -f /root/reset_vnc.sh.bak /root/reset_vnc.sh
    sed -i "s/VNC_PORT/$vnc_port/" /root/reset_vnc.sh
fi

if [ "$JUPYTER_PORT" ]; then
    cp -f /root/.jupyter/jupyter_notebook_config.py.bak /root/.jupyter/jupyter_notebook_config.py
    sed -i "s/8888/$JUPYTER_PORT/" /root/.jupyter/jupyter_notebook_config.py
    cp -f /usr/local/bin/start_vnc_jupyter.sh.bak /usr/local/bin/start_vnc_jupyter.sh
    sed -i "s/ALL_PASSWD/$ALL_PASSWD/" /usr/local/bin/start_vnc_jupyter.sh
    expect /usr/local/bin/start_vnc_jupyter.sh
fi

# startxfce4
export DISPLAY=:1
startxfce4 &
#supervisord
/bin/bash


