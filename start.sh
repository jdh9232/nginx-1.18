#!/bin/bash

curpath=$(dirname $(realpath $0))
cd $curpath

./kill_nginx.sh

echo "nginx start"
# /usr/sbin/nginx

./objs/nginx -t

if [ $? -ne 0 ]; then
    echo "nginx config error"
    exit 1
fi

./objs/nginx
