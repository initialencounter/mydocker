FROM node:lts-alpine

# 安装 chromium 及要用到的工具
RUN apk update && apk add -f chromium ffmpeg curl unzip

# 设置时区
ENV TZ=Asia/Shanghai
# 克隆koishi-bp
RUN cd / && \
    git clone https://github.com/koishijs/boilerplate koishi && \
    cd /koishi && \
    yarn install && \
    # 运行允许局域网访问
    sed -Ei 's/(([[:space:]]*)maxPort.*)/\1\n\2host: 0.0.0.0/' /koishi/koishi.yml && \
    # 修改端口
    sed -i 's/port: 5140/port: 7860/g' /koishi/koishi.yml && \
    chmod -R 777 /koishi

# 设置工作目录
WORKDIR "/koishi"

# 设置启动命令
CMD ["yarn", "start"]