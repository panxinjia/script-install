# 1. 安装依赖
yum install -y yum-utils device-mapper-persistent-data lvm2
# 2. 使用阿里云的安装源
yum-config-manager --add-repo http://mirrors.aliyun.com/docker-ce/linux/centos/docker-ce.repo
# 3. 安装 docker-ce
yum install -y docker-ce
# 4. 配置镜像加速, 默认位置 /etc/docker/daemon.json
# 4.1 创建对应目录, 这个目录默认是不存在的
mkdir -p /etc/docker
# 4.2 切换到对应目录
cd /etc/docker
# 4.3 创建daemon.json文件
touch daemon.json
# 4.4 配置镜像加速地址
echo '{"registry-mirrors": ["http://hub-mirror.c.163.com"]}' >> /etc/docker/daemon.json