FROM oven/bun

WORKDIR "/koishi"

COPY boilerplate /koishi


RUN cd /koishi && \
    bun install && \
    zip boilerplate.zip /koishi && \
    rm -rf /koishi

VOLUME ["/koishi"]
ENTRYPOINT ["/entrypoint.sh"]
CMD ["bun", "start"]
