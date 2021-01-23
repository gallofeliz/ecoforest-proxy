#!/bin/sh

set -e

export BASIC_AUTH=${BASIC_AUTH:-$(echo -n "$USERNAME:$PASSWORD" | base64)}
export PORT=${PORT:-80}
export IP=${IP:-192.168.3.1}

envsubst < /etc/nginx/templates/default.template > /etc/nginx/conf.d/default.conf
rm /etc/nginx/templates/default.template

cat /etc/nginx/conf.d/default.conf
