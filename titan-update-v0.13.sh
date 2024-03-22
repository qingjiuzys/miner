#!/bin/bash

# 检查输入参数
if [ "$#" -ne 1 ]; then
    echo "使用方法: $0 <新的存储大小GB>"
    exit 1
fi

# 定义变量
new_storage_size=$1 # 从命令行参数获取新的存储大小，单位GB
storage_dirs_prefix="/mnt/titan/storage-" # 存储目录前缀
target_data_dir="/mnt/data" # 目标数据目录
containers=5 # 容器数量
image_name="nezha123/titan-edge:1.0" # Docker镜像名称

# 检查并创建目标数据目录
if [ ! -d "$target_data_dir" ]; then
    echo "创建目标数据目录：$target_data_dir"
    mkdir -p "$target_data_dir"
fi

# 移动storage目录下的assets文件，并修改config.toml配置
for i in $(seq 1 $containers); do
    storage_dir="${storage_dirs_prefix}${i}"
    config_file="$storage_dir/config.toml"

    echo "处理存储目录：$storage_dir"

    # 移动文件
    if [ -d "$storage_dir/storage/assets" ]; then
        echo "移动 $storage_dir/storage/assets 到 $target_data_dir"
        mv "$storage_dir/storage/assets"/* "$target_data_dir/"
    else
        echo "目录 $storage_dir/storage/assets 不存在，跳过"
    fi

    # 修改config.toml中的存储大小
    if [ -f "$config_file" ]; then
        echo "修改 $config_file 中的存储大小为 $new_storage_size GB"
        sed -i "s/#StorageGB = [0-9]*/StorageGB = $new_storage_size/" "$config_file"
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

# 重新启动容器
for i in $(seq 1 $containers); do
    container_name="titan-edge0$i"
    echo "重新启动容器：$container_name"
    docker run --name "$container_name" -d -v "${storage_dirs_prefix}${i}:/root/.titanedge" -v "$target_data_dir:/root/.titanedge/storage/assets" "$image_name"
done

echo "迁移和容器更新完成。"
