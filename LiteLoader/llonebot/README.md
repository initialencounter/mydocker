# LLOB docker
```shell
docker network create bot
docker volume create koishi
docker volume create qqnt
docker run -d -p 5140:5140 -v koishi:/koishi:rw --network bot koishijs/koishi
docker run -d -v qqnt:/LiteLoader --network bot -e VNC_PASSWD=vncpasswd -p 8011:5900 -p 8012:6081 -e ACCOUNT=11111111 -e WS_ENABLE=true -e WS_PORT=3001 -p 8013:3001 --name llob initialencounter/liteloader:qq3.2.5-21453_ll1.0.3_ob3.12.2
```