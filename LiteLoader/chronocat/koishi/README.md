```shell
docker volume create cc-koishi
docker run -d -v cc-koishi:/LiteLoader -e VNC_PASSWD=vncpasswd -p 6081:6081 -p 5140:5140 -v /etc/localtime:/etc/localtime:ro --name cc-koishi initialencounter/liteloader:cc-koishi
```

# 注意事项

- 容器创建时，若未指定数据卷，则会挂载两个匿名 volume (/koishi 和 /koishi-bak)
    
    volume (/koishi) 用于存放 Koishi 数据，volume (/koishi-bak) 用于存放备份数据

    可通过命令 `docker volume list` 查看

- 若挂载的 volume (/koishi) 中不存在 `koishi.yml`, 则会将 volume (/koishi) 的数据移动到 volume (/koishi-bak)

    并将 /root/koishi 的 boilerplate 移动到 volume (/koishi)
    
    以此来防止数据意外丢失