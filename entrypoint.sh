#!/bin/bash

sed -i "s/CLIENT_ID/$CLIENT_ID/g" /etc/v2ray/config.json
sed -i "s/CLIENT_ALTERID/$CLIENT_ALTERID/g" /etc/v2ray/config.json
sed -i "s#CLIENT_WSPATH#$CLIENT_WSPATH#g" /etc/v2ray/config.json
sed -i "s#CLIENT_WSPATH#$CLIENT_WSPATH#g" /etc/nginx/conf.d/default.conf
nginx -g 'daemon off;'
supervisord -c /etc/supervisor/supervisord.conf
