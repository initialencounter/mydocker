# Usage

[仓库](https://github.com/initialencounter/mydocker/tree/main/LiteLoader)

支持使用环境变量配置容器，也可以登录 VNC 配置

配置参考
```json
{
  "ob11": {
    "httpPort": HTTP_PORT,
    "httpHosts": [
      "HTTP_HOST"
    ],
    "wsPort": WS_PORT,
    "wsHosts": [
      "WS_HOST"
    ],
    "enableHttp": HTTP_ENABLE,
    "enableHttpPost": HTTP_POST_ENABLE,
    "enableWs": WS_ENABLE,
    "enableWsReverse": WSR_ENABLE
  },
  "heartInterval": HEART,
  "token": "TOKEN",
  "enableLocalFile2Url": F2U_ENABLE,
  "debug": DEBUG_ENABLE,
  "log": LOG_ENABLE,
  "reportSelfMessage": RSM_ENABLE
}
```
# 示例

11111111 改为你的 selfID

## 正向 WS

```shell
docker run -d -v ${PWD}/LiteLoader :/LiteLoader -e VNC_PASSWD=vncpasswd -p 8011:5900 -p 8012:6081 -e ACCOUNT=11111111 -e WS_ENABLE=true -e WS_PORT=3001 -p 8013:3001 --name llob initialencounter/liteloader:qq3.2.5-21453_ll1.0.3_ob3.12.2
```


## 反向 WS

```shell
docker run -d -v ${PWD}/LiteLoader :/LiteLoader -e VNC_PASSWD=vncpasswd -p 8021:5900 -p 8022:6081 -e ACCOUNT=11111111 -e WS_HOST=ws://1.1.1.1:5140/onebot -e WSR_ENABLE=true --name llob initialencounter/liteloader:qq3.2.5-21453_ll1.0.3_ob3.12.2
```

## HTTP

```shell
docker run -d -v ${PWD}/LiteLoader :/LiteLoader -e VNC_PASSWD=vncpasswd -p 8031:5900 -p 8032:6081 -e ACCOUNT=11111111 -e HTTP_PORT=3000 -e HTTP_ENABLE=true -p 8033:3000 --name llob initialencounter/liteloader:qq3.2.5-21453_ll1.0.3_ob3.12.2
```