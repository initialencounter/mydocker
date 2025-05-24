FROM initialencounter/liteloader:latest

# 替换启动脚本
COPY entrypoint.sh /etc/entrypoint.sh

RUN chmod +x /etc/entrypoint.sh && \
    version=v0.2.19 && \
    curl -L -o /tmp/chronocat-llqqnt-engine-chronocat-api.zip https://github.com/chrononeko/chronocat/releases/download/$version/chronocat-llqqnt-engine-chronocat-api-$version.zip && \
    curl -L -o /tmp/chronocat-llqqnt-engine-chronocat-event.zip https://github.com/chrononeko/chronocat/releases/download/$version/chronocat-llqqnt-engine-chronocat-event-$version.zip && \
    curl -L -o /tmp/chronocat-llqqnt.zip https://github.com/chrononeko/chronocat/releases/download/$version/chronocat-llqqnt-$version.zip && \
    curl -L -o /tmp/chronocat-llqqnt-engine-crychiccat.zip https://github.com/chrononeko/chronocat/releases/download/$version/chronocat-llqqnt-engine-crychiccat-$version.zip && \
    curl -L -o /tmp/chronocat-llqqnt.zip https://github.com/chrononeko/chronocat/releases/download/$version/chronocat-llqqnt-$version.zip

# 设置容器启动时运行的命令
ENTRYPOINT ["/etc/entrypoint.sh"]