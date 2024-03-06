# 安装 Liteloader
if [ ! -f "/LiteLoader/package.json" ]; then
    mkdir -p /LiteLoader && \
    unzip /tmp/LiteLoaderQQNT.zip -d /LiteLoader && \
    sed -i '1s/^/require("\/LiteLoader");\n/' /opt/QQ/resources/app/app_launcher/index.js
fi

# 安装 LLOneBot
if [ ! -f "/LiteLoader/plugins/LLOneBot/manifest.json" ]; then
    mkdir -p /LiteLoader/plugins/LLOneBot && \
    unzip /tmp/LLOneBot.zip -d /LiteLoader/plugins/LLOneBot/
fi

CONFIG_PATH=/LiteLoader/data/LLOneBot/config_$ACCOUNT.json
if [ -f "$CONFIG_PATH" ]; then
    exit 1
fi

mkdir -p /LiteLoader/data/LLOneBot
cp -f /root/config.txt $CONFIG_PATH


if [ "$HTTP_PORT" ]; then
    sed -i "s/HTTP_PORT/$HTTP_PORT/" $CONFIG_PATH
else
    sed -i "s/HTTP_PORT/3000/" $CONFIG_PATH
fi

if [ "$HTTP_HOST" ]; then
    sed -i "s|HTTP_HOST|$HTTP_HOST|" $CONFIG_PATH
else
    sed -i "s/\"HTTP_HOST\"/\"\"/" $CONFIG_PATH
fi

if [ "$WS_PORT" ]; then
    sed -i "s/WS_PORT/$WS_PORT/" $CONFIG_PATH
else
    sed -i "s/WS_PORT/3001/" $CONFIG_PATH
fi

if [ "$WS_HOST" ]; then
    sed -i "s|WS_HOST|$WS_HOST|" $CONFIG_PATH
else
    sed -i "s/\"WS_HOST\"/\"\"/" $CONFIG_PATH
fi

if [ "$HTTP_ENABLE" ]; then
    sed -i "s/HTTP_ENABLE/$HTTP_ENABLE/" $CONFIG_PATH
else
    sed -i "s/HTTP_ENABLE/false/" $CONFIG_PATH
fi

if [ "$HTTP_POST_ENABLE" ]; then
    sed -i "s/HTTP_POST_ENABLE/$HTTP_POST_ENABLE/" $CONFIG_PATH
else
    sed -i "s/HTTP_POST_ENABLE/false/" $CONFIG_PATH
fi

if [ "$WS_ENABLE" ]; then
    sed -i "s/WS_ENABLE/$WS_ENABLE/" $CONFIG_PATH
else
    sed -i "s/WS_ENABLE/false/" $CONFIG_PATH
fi

if [ "$WSR_ENABLE" ]; then
    sed -i "s/WSR_ENABLE/$WSR_ENABLE/" $CONFIG_PATH
else
    sed -i "s/WSR_ENABLE/false/" $CONFIG_PATH
fi

if [ "$HEART" ]; then
    sed -i "s/HEART/$HEART/" $CONFIG_PATH
else
    sed -i "s/HEART/60000/" $CONFIG_PATH
fi

if [ "$TOKEN" ]; then
    sed -i "s|TOKEN|$TOKEN|" $CONFIG_PATH
else
    sed -i "s/\"TOKEN\"/\"\"/" $CONFIG_PATH
fi

if [ "$F2U_ENABLE" ]; then
    sed -i "s/F2U_ENABLE/$F2U_ENABLE/" $CONFIG_PATH
else
    sed -i "s/F2U_ENABLE/false/" $CONFIG_PATH
fi

if [ "$DEBUG_ENABLE" ]; then
    sed -i "s/DEBUG_ENABLE/$DEBUG_ENABLE/" $CONFIG_PATH
else
    sed -i "s/DEBUG_ENABLE/false/" $CONFIG_PATH
fi

if [ "$LOG_ENABLE" ]; then
    sed -i "s/LOG_ENABLE/$LOG_ENABLE/" $CONFIG_PATH
else
    sed -i "s/LOG_ENABLE/false/" $CONFIG_PATH
fi

if [ "$RSM_ENABLE" ]; then
    sed -i "s/RSM_ENABLE/$RSM_ENABLE/" $CONFIG_PATH
else
    sed -i "s/RSM_ENABLE/false/" $CONFIG_PATH
fi