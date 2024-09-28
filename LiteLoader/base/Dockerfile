FROM initialencounter/liteloader:base
COPY start.sh /root/

# 安装Linux QQ
RUN curl -o /root/linuxqq.deb https://dldir1.qq.com/qqfile/qq/QQNT/Linux/QQ_3.2.12_240927_amd64_01.deb && \
    dpkg -i /root/linuxqq.deb && apt-get -f install -y && rm /root/linuxqq.deb && \

    # 下载LiteLoader 1.1.1
    curl -L -o /tmp/LiteLoaderQQNT.zip https://github.com/LiteLoaderQQNT/LiteLoaderQQNT/releases/download/1.2.2/LiteLoaderQQNT.zip && \
    mkdir -p /LiteLoader && \
    echo 'require("/LiteLoader");' > /opt/QQ/resources/app/app_launcher/llqqnt.js && \
    sed -i 's|"main": "[^"]*"|"main": "./app_launcher/llqqnt.js"|' /opt/QQ/resources/app/package.json && \

    # 下载 whale
    curl -L -o /tmp/whale.zip https://github.com/initialencounter/whale/releases/download/v0.1.1/whale.zip && \
    # 设置启动脚本权限
    chmod +x /root/start.sh

VOLUME ["/LiteLoader"]

# 设置容器启动时运行的命令
ENTRYPOINT ["/root/start.sh"]
