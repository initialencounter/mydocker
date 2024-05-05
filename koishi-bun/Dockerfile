FROM oven/bun

WORKDIR "/koishi"

COPY koishi entrypoint.sh /

RUN apt-get update && \
    apt-get install -y \
    zip unzip && \
    apt clean && \
    rm -rf \
    /var/lib/apt/lists/* \
    /tmp/* \
    /var/tmp/* && \
    cd /koishi && \
    bun install && \
    zip koishi.zip /koishi && \
    rm -rf /koishi && \
    chmod +x /entrypoint.sh

VOLUME ["/koishi"]
ENTRYPOINT ["/entrypoint.sh"]
CMD ["bun", "start"]
