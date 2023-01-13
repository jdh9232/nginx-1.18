#!/bin/bash

curpath=$(dirname $(realpath $0))
cd $curpath

./kill_nginx.sh

echo "$PROCESS start"
# /usr/sbin/nginx

./objs/nginx
