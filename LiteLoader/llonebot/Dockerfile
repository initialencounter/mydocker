FROM initialencounter/liteloader:qq3.2.5-21453_ll1.0.3_

COPY config.txt setPort.sh /root/

# 安装 LiteLoader-OnebotApi
RUN mkdir -p /LiteLoader/plugins/LLOneBot && \
    curl -L -o /tmp/LLOneBot.zip https://mirror.ghproxy.com/https://github.com/LLOneBot/LLOneBot/releases/download/v3.11.2/LLOneBot.zip
