```shell
# build
docker build -f Dockerfile -t initialencounter/liteloader:base .
# run
docker run -d -e VNC_PASSWD=vncpasswd -e ENABLE_VNC=true -p 5900:5900 --name base initialencounter/liteloader:base
```