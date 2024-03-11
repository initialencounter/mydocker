FROM initialencounter/liteloader:qq3.2.5-21453_ll1.0.3_

# 替换启动脚本
COPY entrypoint.sh /etc/entrypoint.sh
RUN chmod +x /etc/entrypoint.sh

# 预下载 Chronocat
RUN curl -L -o /tmp/chronocat-llqqnt-engine-chronocat-api.zip https://github.com/chrononeko/chronocat/releases/download/v0.2.4/chronocat-llqqnt-engine-chronocat-api-v0.2.4.zip && \
    curl -L -o /tmp/chronocat-llqqnt-engine-chronocat-event.zip https://github.com/chrononeko/chronocat/releases/download/v0.2.4/chronocat-llqqnt-engine-chronocat-event-v0.2.4.zip && \
    curl -L -o /tmp/chronocat-llqqnt-engine-poke.zip https://github.com/chrononeko/chronocat/releases/download/v0.2.4/chronocat-llqqnt-engine-poke-v0.2.4.zip  && \
    curl -L -o /tmp/chronocat-llqqnt.zip https://github.com/chrononeko/chronocat/releases/download/v0.2.4/chronocat-llqqnt-v0.2.4.zip

# 设置容器启动时运行的命令
ENTRYPOINT ["/etc/entrypoint.sh"]