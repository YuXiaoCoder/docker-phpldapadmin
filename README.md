## LDAPAdmin

### 环境

+ `OS`: `CentOS 7.8`
+ `Docker`：`19.03.8`
+ `Docker Compose`：`1.26.0`

### 部署

+ 拷贝代码：

```bash
rsync -azPS --delete --exclude="*.git*" docker-phpldapadmin VPN:/root/
```

+ 构建镜像：

```bash
cd /root/docker-phpldapadmin
docker build --no-cache --tag docker-phpldapadmin .
```

+ 配置文件：

```bash
mkdir -p /data/ldapadmin/
cp -f /root/docker-phpldapadmin/configuration/config.php /data/ldapadmin/
```

+ 启动容器：

```bash
docker-compose up -d
```

+ 进入容器：

```bash
docker exec -it ldapadmin bash
```

***
