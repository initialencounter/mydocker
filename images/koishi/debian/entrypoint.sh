#!/usr/bin/env sh
set -eu

chown -R root:root /koishi
if [ ! -e "/koishi/package.json" ]; then
  unzip -d /koishi /boilerplate.zip
  sed -Ei 's/(([[:space:]]*)maxPort.*)/\1\n\2host: 0.0.0.0/' /koishi/koishi.yml
  sed -i.bak '/"packageManager":/d' /koishi/package.json
fi

export PATH=\$PATH:/usr/local/nodejs/node-v20.16.0-linux-x64/bin
exec "$@"