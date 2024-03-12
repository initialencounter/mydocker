FROM initialencounter/liteloader:qq3.2.5-240305_ll1.0.3_

# 替换启动脚本
COPY entrypoint.sh /etc/entrypoint.sh
RUN chmod +x /etc/entrypoint.sh

# 预下载 Chronocat
RUN curl -L -o /tmp/chronocat-llqqnt.zip https://github.com/chrononeko/chronocat/releases/download/

# 设置容器启动时运行的命令
ENTRYPOINT ["/etc/entrypoint.sh"]