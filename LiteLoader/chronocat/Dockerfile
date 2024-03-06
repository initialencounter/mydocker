FROM initialencounter/liteloader:qq3.2.5-21453_ll1.0.3_

# 设置环境变量
COPY start.sh /root/
RUN chmod +x /root/start.sh  && \
VOLUME ["/LiteLoader"]
# 设置容器启动时运行的命令
ENTRYPOINT ["/root/start.sh"]