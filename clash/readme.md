# docker

## clash

```shell
sudo docker run -v /home/ie/app/clash/config.yaml:/root/.config/clash/config.yaml -v /etc/localtime:/etc/localtime:ro -p 7890:7890 -p 7891:7891 -p 9090:9090 -d --network clash --name clash dreamacro/clash
```

## deshboard yacd

```shell
docker run -p 1234:80 -d --name yacd --rm ghcr.io/haishanh/yacd:master

# and then open http://localhost:1234 in your browser
```