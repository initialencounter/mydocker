FROM initialencounter/liteloader:base
COPY start.sh /root/

# 安装Linux QQ
RUN curl -o /root/linuxqq_3.2.5-21453_amd64.deb https://dldir1.qq.com/qqfile/qq/QQNT/852276c1/linuxqq_3.2.5-21453_amd64.deb && \
    dpkg -i /root/linuxqq_3.2.5-21453_amd64.deb && apt-get -f install -y && rm /root/linuxqq_3.2.5-21453_amd64.deb && \

    # 安装LiteLoader
    curl -L -o /tmp/LiteLoaderQQNT.zip https://mirror.ghproxy.com/https://github.com/LiteLoaderQQNT/LiteLoaderQQNT/releases/download/1.0.3/LiteLoaderQQNT.zip && \
    mkdir -p /opt/QQ/resources/app/LiteLoader && \
    unzip /tmp/LiteLoaderQQNT.zip -d /opt/QQ/resources/app/LiteLoader && \
    sed -i '1s/^/require("\/opt\/QQ\/resources\/app\/LiteLoader");\n/' /opt/QQ/resources/app/app_launcher/index.js && \
    rm /tmp/LiteLoaderQQNT.zip && \

    # 创建必要的目录
    mkdir -p ~/.vnc && \

    # 创建启动脚本
    chmod +x /root/start.sh  && \

    # 配置supervisor
    echo "[supervisord]" > /etc/supervisor/supervisord.conf && \
    echo "nodaemon=true" >> /etc/supervisor/supervisord.conf && \
    echo "[program:x11vnc]" >> /etc/supervisor/supervisord.conf && \
    echo "command=/usr/bin/x11vnc -display :1 -noxrecord -noxfixes -noxdamage -forever -rfbauth ~/.vnc/passwd" >> /etc/supervisor/supervisord.conf