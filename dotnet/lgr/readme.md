# build
```bash
docker build -t lgr -f Dockerfile .
```

# run
```bash
docker run -ti -p 8081:8081 -v /root/lgr/data:/app/data -v /root/lgr/bin:/app/bin -e UID=$UID -e GID=$(id -g) lgr
```

# docker-compose

```bash
docker-compose up -d
```