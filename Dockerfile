FROM shadowsocks/shadowsocks-libev
EXPOSE 8443

COPY v2ray-plugin /usr/bin/v2ray-plugin
CMD exec ss-server -s 0.0.0.0 -p 8443 -k ${PASSWORD:-fuckthisshit} -m aes-256-gcm -t $TIMEOUT -d $DNS_ADDRS -u --plugin v2ray-plugin --plugin-opts "server" $ARGS