FROM initialencounter/liteloader:qq3.2.5-21453_ll1.0.3

COPY config.txt setPort.sh /root/

# 安装 LiteLoader-OnebotApi
RUN mkdir -p /opt/QQ/resources/app/LiteLoader/plugins/LLOneBot && \
    curl -L -o /tmp/LLOneBot.zip https://mirror.ghproxy.com/https://github.com/LLOneBot/LLOneBot/releases/download/v3.10.1/LLOneBot.zip && \
    unzip /tmp/LLOneBot.zip -d /opt/QQ/resources/app/LiteLoader/plugins/LLOneBot/ && \
    rm /tmp/LLOneBot.zip

