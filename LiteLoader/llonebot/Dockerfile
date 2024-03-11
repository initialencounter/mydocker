FROM initialencounter/liteloader:qq3.2.5-240305_ll1.0.3__

COPY config.txt /root/

COPY entrypoint.sh /etc/entrypoint.sh
# 安装 LiteLoader-OnebotApi
RUN mkdir -p /LiteLoader/plugins/LLOneBot && \
    curl -L -o /tmp/LLOneBot.zip https://github.com/LLOneBot/LLOneBot/releases/download/v3.14.0/LLOneBot.zip

# 设置容器启动时运行的命令
ENTRYPOINT ["/etc/entrypoint.sh"]