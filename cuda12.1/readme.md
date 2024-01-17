# software

- cuda12.1
- pytorch2.1.2
- pycharm-community-2023.3.2
- ssh
- xfce+tightvnc
- jupyter

# usage
```shell
docker run -e ALL_PASSWD="vncpasswd" -e SSH_PORT=22 -e VNC_PORT=5901 -e JUPYTER_PORT=3389 -p 8000:22 -p 8001:5901 -p 8002:3389 -p 8003-8009:7863-7869 --gpus 0 -it initialencounter/cuda:12.1.0-devel-ubuntu22.04
```

- ALL_PASSWD：ssh vnc jupyter的密码
- SSH_PORT： ssh端口
- VNC_PORT：VNC端口
- JUPYTER_PORT： jupyter端口

