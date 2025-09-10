--------------任意地方执行-------------------
--------------------------------------------
-- 创建数据库和用户
CREATE DATABASE joplin;
CREATE USER joplin WITH ENCRYPTED PASSWORD 'EwFVgCs9bbAqpo';	-- 这里修改成自己的密码

-- 授予数据库连接权限（可选，通常自动拥有）
GRANT CONNECT ON DATABASE joplin TO joplin;
--------------------------------------------


-------进入到刚创建的 joplin 库中-------
--------------------------------------------
-- 授予 schema 权限
GRANT USAGE ON SCHEMA public TO joplin;
GRANT CREATE ON SCHEMA public TO joplin;

-- 授予现有对象权限
GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA public TO joplin;
GRANT ALL PRIVILEGES ON ALL SEQUENCES IN SCHEMA public TO joplin;
GRANT ALL PRIVILEGES ON ALL FUNCTIONS IN SCHEMA public TO joplin;

-- 设置默认权限
ALTER DEFAULT PRIVILEGES IN SCHEMA public GRANT ALL ON TABLES TO joplin;
ALTER DEFAULT PRIVILEGES IN SCHEMA public GRANT ALL ON SEQUENCES TO joplin;
ALTER DEFAULT PRIVILEGES IN SCHEMA public GRANT ALL ON FUNCTIONS TO joplin;
--------------------------------------------