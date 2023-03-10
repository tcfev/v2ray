FROM shadowsocks/shadowsocks-libev AS dist
COPY v2ray-plugin /usr/bin/v2ray-plugin
CMD exec ss-server -s $SERVER_ADDR -p $SERVER_PORT -k ${PASSWORD:-fuckthisshit} -m aes-256-gcm -t $TIMEOUT -d $DNS_ADDRS -u --plugin v2ray-plugin --plugin-opts "server" $ARGS