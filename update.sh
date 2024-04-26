#!/bin/bash

storage=2048 # 新增容器限制大小

show_help() {
    cat << EOF

################################### 帮助信息 ###################################

Usage: ${0##*/} [OPTIONS]

OPTIONS:
    --storage STORAGE        需要更新管理的存储空间大小。                          
    -h / --help              显示此帮助信息并退出。

资源链接:
    - 微信：checkHeart666
    - 代码库（欢迎点赞）： https://github.com/qingjiuzys/titan-start
    - titan注册链接：https://test1.titannet.io/intiveRegister?code=wLFnFN
    - meson注册链接：https://dashboard.gaganode.com/register?referral_code=qpkofealpfaomjb
    - titan官网：https://titannet.io/
    - titan存储服务：https://storage.titannet.io/
    - titan测试节点控制台：https://test1.titannet.io/
    - titan中文文档：https://titannet.gitbook.io/titan-network-cn

################################################################################
EOF
}

# 处理命令行参数
while [ "$#" -gt 0 ]; do
    case "$1" in
        --storage=*) storage="${1#*=}" ;;
        -h|--help) show_help; exit 0 ;;
        *) echo "未知参数: $1" ; show_help; exit 1 ;;
    esac
    shift
done


# 定义变量
new_storage_size=$storage # 从命令行参数获取新的存储大小，单位GB
storage_dirs_prefix="/mnt/storage-" # 存储目录前缀
target_data_dir="/mnt/data" # 目标数据目录
containers=5 # 容器数量
image_name="nezha123/titan-edge:latest" # Docker镜像名称
new_image_name="nezha123/titan-edge:latest" # Docker镜像名称


# 移动storage目录下的assets文件，并修改config.toml配置
for i in $(seq 1 $containers); do
    config_file="$storage_dirs_prefix$i/config.toml"
    # 修改config.toml中的存储大小
    if [ -f "$config_file" ]; then
        echo "修改 $config_file 中的存储大小为 $new_storage_size GB"
        sed -i "s/#StorageGB = [0-9]*/StorageGB = $storage/" "$config_file"
        sed -i "s/StorageGB = [0-9]*/StorageGB = $storage/" "$config_file"
        echo "修改 $config_file 中的 开放端口为 123${i} "
        sed -i "s/#ListenAddress.*$/ListenAddress = "0.0.0.0:123${i}"/" "$config_file"
        sed -i "s/ListenAddress.*$/ListenAddress =  "0.0.0.0:123${i}"/" "$config_file"
        echo "配置开放端口：123${i} "
        ufw allow 123${i}
        
    else
        echo "配置文件 $config_file 不存在，跳过"
    fi
done


# 停止并删除相关容器
for i in $(seq 1 $containers); do
    container_name="titan-edge0$i"
    echo "停止并删除容器：$container_name"
    docker stop "$container_name"
    docker rm "$container_name"
done

# 删除Docker镜像
echo "删除Docker镜像：$image_name"
docker rmi "$image_name"
docker pull "$new_image_name"

# 重新启动容器
for i in $(seq 1 $containers); do
    container_name="titan-edge0$i"
    echo "重新启动容器：$new_image_name"
    docker run --name "$container_name" -p 123${i}:123${i} -d -v "${storage_dirs_prefix}${i}:/root/.titanedge"  "$new_image_name"
done

echo "更新容器完成，若在云厂商等环境，请检查安全组开放端口 1231,1232，1233,1234,1235"
