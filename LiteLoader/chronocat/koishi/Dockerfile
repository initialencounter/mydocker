FROM initialencounter/liteloader:qq3.2.5-240305_ll1.0.3_cc0.2.4

# 设置环境变量
ENV AH=x64
ENV NODE_VERSION="node-v20.11.1-linux-$AH"

RUN curl -o https://nodejs.org/dist/v20.11.1/$NODE_VERSION.tar.xz && \
    # 解压并删除 nodejs 源文件
    tar -xvf $NODE_VERSION.tar.xz -C /usr/local/ && \
    rm $NODE_VERSION.tar.xz -f && \
    echo '#!/usr/bin/env node' >> /usr/local/bin/yarn && \
    echo 'require("/root/koishi/.yarn/releases/yarn-4.0.1.cjs");' >> /usr/local/bin/yarn && \
    echo "export PATH=\$PATH:/usr/local/$NODE_VERSION/bin" >> /etc/profile && \

    # 克隆 koishi
    git clone https://github.com/koishijs/koishi "/root/koishi"

# 替换启动脚本
COPY entrypoint.sh /etc/entrypoint.sh
RUN chmod +x /etc/entrypoint.sh