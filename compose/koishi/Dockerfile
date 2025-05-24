FROM koishijs/koishi:latest-lite

RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories

RUN apk add --no-cache chromium nss freetype harfbuzz ca-certificates ttf-freefont font-noto-cjk
