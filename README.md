[toc]
# joplin_server
此服务为 joplin 笔记的服务器，用此服务器作为同步的方案，可以解锁更多的功能

## 相关网址
- [官网](https://joplinapp.org/)
- [github](https://github.com/laurent22/joplin)
- [dockerhub](https://hub.docker.com/r/joplin/server/tags)
- [官方各种客户端](https://joplinapp.org/help/install/)
- [F-Droid 安卓客户端下载](https://f-droid.org/zh_Hans/packages/net.cozic.joplin/)
- [F-Droid 安卓软件下载中心](https://f-droid.org/zh_Hans/)

## 相关依赖
此容器依赖 postgresSQL 数据库

## 使用过的版本
- 2.14.1-beta
- 2.13.5-beta


## 文件说明
- .env: 容器的配置文件，可以修改，里面有以下重要参数
	- image: docker 镜像
	- port: 映射到宿主机的端口，改成自己喜欢的端口
	- APP_BASE_URL: 外网访问地地址(如果有代理也要与外网的强一到)
	- POSTGRES_HOST: postgres 地址
	- POSTGRES_PORT: postgres 端口
	- POSTGRES_USER: postgres 用户
	- POSTGRES_DATABASE: postgres 库名
	- POSTGRES_PASSWORD: postgres 密码
	- 其它及详情参数文件中有注释
- docker-compose.yaml: docker 容器编排文件，此文件不用修改
- init.sh: 初始化运行环境文件，此文件不用修改

## 部署容器
时空目录后运行下面命令
```bash
sh init.sh
docker compose up -d
```



