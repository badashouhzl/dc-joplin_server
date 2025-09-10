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
- 3.4.2
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
- sql.sql: joplin 在 postgres 创建用户和库的脚本
- joplin_server.nginx.conf: nginx 代理配置

## 部署容器
先到库中执行 sql.sql 脚本, 创建需要使用的用户和库，脚本内有说明执行步骤

运行下面命令
```bash
chmod +x ctrl
./ctrl init public # 或 ./ctrl init private   # 这个是只有容器内部风格 
```

## 设置
### 登入后台管理页面
浏览器访问: http://external.net:50011
默认管理用户: admin@localhost
默认管理密码: admin

然后修改管理员账号和密码
