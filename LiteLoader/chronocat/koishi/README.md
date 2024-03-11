```shell
docker volume create cc-koishi
docker run -d -v cc-koishi:/LiteLoader -e VNC_PASSWD=vncpasswd -p 6081:6081 -p 5140:5140 -v /etc/localtime:/etc/localtime:ro --name cc-koishi initialencounter/liteloader:cc0.2.4_koishi4.17.2
```