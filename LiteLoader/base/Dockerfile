FROM initialencounter/liteloader:base
COPY start.sh /root/

# 安装Linux QQ_3.2.5_240305
RUN curl -o /root/linuxqq.deb https://dldir1.qq.com/qqfile/qq/QQNT/Linux/QQ_3.2.5_240305_amd64_01.deb && \
    dpkg -i /root/linuxqq.deb && apt-get -f install -y && rm /root/linuxqq.deb && \

    # 下载LiteLoader 1.0.3
    curl -L -o /tmp/LiteLoaderQQNT.zip https://github.com/LiteLoaderQQNT/LiteLoaderQQNT/releases/download/1.0.3/LiteLoaderQQNT.zip && \
    mkdir -p /LiteLoader && \
    sed -i '1s/^/require("\/LiteLoader");\n/' /opt/QQ/resources/app/app_launcher/index.js && \

    # 创建必要的目录
    mkdir -p ~/.vnc && \

    # 设置启动脚本权限
    chmod +x /root/start.sh  && \

    # 配置supervisor
    echo "[supervisord]" > /etc/supervisor/supervisord.conf && \
    echo "nodaemon=true" >> /etc/supervisor/supervisord.conf && \
    echo "[program:x11vnc]" >> /etc/supervisor/supervisord.conf && \
    echo "command=/usr/bin/x11vnc -display :1 -noxrecord -noxfixes -noxdamage -forever -rfbauth ~/.vnc/passwd" >> /etc/supervisor/supervisord.conf

VOLUME ["/LiteLoader"]

# 设置容器启动时运行的命令
ENTRYPOINT ["/root/start.sh"]