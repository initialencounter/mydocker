```shell
docker network create bot
docker volume create koishi
docker volume create qqnt2
docker run -d -p 5140:5140 -v koishi:/koishi:rw --network bot koishijs/koishi
docker run -d -v qqnt2:/LiteLoader --network bot -e VNC_PASSWD=vncpasswd -p 6081:6081 --name cc initialencounter/cc:latest
```