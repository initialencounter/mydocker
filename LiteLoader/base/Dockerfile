FROM initialencounter/liteloader:base
COPY start.sh /root/

# 安装Linux QQ_3.2.7_240428
RUN curl -o /root/linuxqq.deb https://dldir1.qq.com/qqfile/qq/QQNT/Linux/QQ_3.2.7_240428_amd64_01.deb && \
    dpkg -i /root/linuxqq.deb && apt-get -f install -y && rm /root/linuxqq.deb && \

    # 下载LiteLoader 1.1.1
    curl -L -o /tmp/LiteLoaderQQNT.zip https://github.com/LiteLoaderQQNT/LiteLoaderQQNT/releases/download/1.1.1/LiteLoaderQQNT.zip && \
    mkdir -p /LiteLoader && \
    sed -i '1s/^/require("\/LiteLoader");\n/' /opt/QQ/resources/app/app_launcher/index.js && \

    # 创建必要的目录
    mkdir -p ~/.vnc && \

    # 设置启动脚本权限
    chmod +x /root/start.sh

VOLUME ["/LiteLoader"]

# 设置容器启动时运行的命令
ENTRYPOINT ["/root/start.sh"]
