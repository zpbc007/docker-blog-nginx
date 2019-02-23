#!/bin/bash

# get docker id
container_id="$(cat /proc/1/cpuset | cut -c9-)"
echo "container_id: ${container_id}"
export container_id="${container_id}"

# get code dir
root_dir="$(pwd)"
echo "root_dir: ${root_dir}"

# build image
docker build \
    -t my-nginx \
    --build-arg root_dir=${root_dir} \
    .

# restart nginx
docker-compose down
docker-compose up -d
echo 'nginx runing'
exit 0