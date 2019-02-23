# docker-nginx
docker nginx template

## 说明

- log 目录用于存放nginx日志文件
- static 目录用于存放静态文件
- 提供proxy-net

## 使用方式

项目根目录下

1. 生成image文件

```shell
$ docker build -t my-nginx .
```

2. 启动nginx

```shell
$ docker-compose up -d
```

或者直接运行脚本

```
$ ./index.sh
```