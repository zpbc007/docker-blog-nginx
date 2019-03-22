#!/bin/bash

# copy config file 
cp ./nginx.conf /etc/nginx/nginx.conf

# mk error log
mkdir -p /etc/nginx/logs/
touch /etc/nginx/logs/error.log

# create dir
mkdir -p /apps/blog/

# move static
mv ./public/* /apps/blog/

# move certificate
mv ./zpblog.xyz/* /etc/nginx/ssl/zpblog.xyz

# start nginx
nginx -g "daemon off;"