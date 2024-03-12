FROM initialencounter/liteloader:qq3.2.5-240305_ll1.0.3_cc0.2.4

# 设置环境变量
ENV AH=x64
ENV NODE_VERSION="node-v20.11.1-linux-$AH"

RUN apt-get update && apt-get install xz-utils && \
    curl -o $NODE_VERSION.tar.xz https://nodejs.org/dist/v20.11.1/$NODE_VERSION.tar.xz && \
    # 解压并删除 nodejs 源文件
    tar -xf $NODE_VERSION.tar.xz -C /usr/local/ && \
    rm $NODE_VERSION.tar.xz -f && \
    echo "export PATH=\$PATH:/usr/local/$NODE_VERSION/bin" >> /etc/profile && \
    . /etc/profile && \
    npm i -g yarn && \
    # 克隆 koishi
    cd /root && \
    git clone https://github.com/koishijs/boilerplate "koishi" && \
    sed -Ei 's/(([[:space:]]*)maxPort.*)/\1\n\2host: 0.0.0.0/' /root/koishi/koishi.yml && \
    cd /root/koishi && \
    yarn workspaces focus --production && \
    mkdir -p /koishi && \
    mkdir -p /koishi-bak

VOLUME ["/koishi","/koishi-bak"]
# 替换启动脚本
COPY entrypoint.sh /etc/entrypoint.sh
RUN chmod +x /etc/entrypoint.sh