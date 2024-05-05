#!/usr/bin/env sh
set -eu

chown -R root:root /koishi
if [ ! -e "/koishi/package.json" ]; then
  unzip -d /tmp /koishi.zip
  mv /tmp/koishi/* /koishi
  sed -Ei 's/(([[:space:]]*)maxPort.*)/\1\n\2host: 0.0.0.0/' /koishi/koishi.yml
fi

exec "$@"