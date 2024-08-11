FROM debian:latest

COPY ./entrypoint.sh /
RUN apt update && apt install ffmpeg chromium git xz-utils curl unzip -y

# 克隆 nodejs
RUN curl -L -o nodejs.tar.xz https://nodejs.org/dist/v20.16.0/node-v20.16.0-linux-x64.tar.xz && \
mkdir -p /usr/local/nodejs && \
tar -xf nodejs.tar.xz -C /usr/local/nodejs && \
curl -L -o /usr/local/nodejs/node-v20.16.0-linux-x64/bin/yarn https://repo.yarnpkg.com/4.1.0/packages/yarnpkg-cli/bin/yarn.js
chmod +x /usr/local/nodejs/node-v20.16.0-linux-x64/bin/yarn

# 下载koishi
RUN version=$(curl -Ls "https://api.github.com/repos/koishijs/boilerplate/releases/latest" | grep '"tag_name":' | sed -E 's/.*"([^"]+)".*/\1/') && \
    curl -L -o /boilerplate.zip https://github.com/koishijs/boilerplate/releases/download/${version}/boilerplate-${version}-linux-arm64-node20.zip

VOLUME ["/koishi"]
# 设置工作目录
WORKDIR "/koishi"

CMD ["yarn", "start"]