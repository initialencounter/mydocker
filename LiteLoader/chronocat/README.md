# 使用方法

```shell
docker run -d -e VNC_PASSWD=vncpasswd -p 6081:6081 -p 5500:5500 --name cc initialencounter/liteloader:qq3.2.5-240305_ll1.0.3_cc0.2.4
```

## 环境变量
    - VNC_PASSWD vnc 密码

## 端口
    - 5900 VNC
    - 6081 noVNC
    - 5500 satori

## 目录
    - /LiteLoader LiteLoader 安装位置
    - /opt/QQ QQ安装位置

## 数据卷
    - ["/LiteLoader"]


# 进阶用法

创建网络， 使用了此网络的容器可通过容器名来互相访问彼此的服务
```shell
docker network create bot
```
创建数据卷，这一步是为了更方便对插件进行修改，或对koishi进行修改
```shell
docker volume create koishi
docker volume create qqnt2
```
启动 koishi，并将 Chronocat 和 Koishi 放在同一个网络
在 Koishi 容器中，你可以通过 http://chronocat:5500 来访问 Chronocat 容器提供的 Satori 服务
```shell
docker run -d -p 5140:5140 -v koishi:/koishi:rw --network bot -- name koishi koishijs/koishi
docker run -d -v qqnt2:/LiteLoader --network bot -e VNC_PASSWD=vncpasswd -p 6081:6081 --name chronocat initialencounter/liteloader:qq3.2.5-240305_ll1.0.3_cc0.2.4
```