# Titan + Meson 一键启动指南
# 注册链接

##  [Titan特别邀请链接(点击注册)](https://test1.titannet.io/intiveRegister?code=wLFnFN)
##  [meson特别邀请链接(点击注册)](https://dashboard.gaganode.com/register?referral_code=qpkofealpfaomjb)


## 便宜服务器

##  [腾讯云10台280一个月 (点击注册)](https://curl.qcloud.com/IfHGBzdw)

## 购买位置
<img width="400" alt="image" src="https://github.com/qingjiuzys/titan-start/assets/142193034/bfc2a7aa-5630-483e-9611-bfe4785aa674">

## 选择系统 
<img width="400" alt="image" src="https://github.com/qingjiuzys/titan-start/assets/142193034/06da8dd5-184e-41a2-bc1c-ce969dd7fd58">


### 特性

- 支持NFS启动五个节点
- 支持百万台直接启动
- 支持实时挂载NFS
- 支持自定义容器数量
- 支持自定义存储空间管理
- 支持三个系统 Ubuntu 18.04， Debian， OpenCloudOS 8
- 修复了官方容器无法绑定身份码的问题
- 支持容器 + 主机的部署模式
- 支持自动恢复（磁盘足够的情况下定时任务会生效并自动重启）
- 双挖titan + meson一键启动
  
### 启动帮助

在使用脚本前，请确保了解以下参数的用途：

- `--type TYPE`：安装模式。1 代表仅5个容器模式，2 代表主机+4个容器模式(已废弃更新)
- `--code CODE`：Titan-Edge 绑定码（必填）。
- `--nfsurl NFSURL`：NFS URL，用于挂载（可选填）。
- `--already_install_NFS`：是否已经安装NFS，1 表示是，2 表示否。
- `--containers CONTAINERS`：需要管理的容器数量，默认为 4。
- `--storage STORAGE`：容器需要管理的存储空间大小。
- `--meson_gaga_code`：需要安装的mesonGagaCode(不填写不安装)       
- `--meson_cdn_code`：需要安装的weasonCdnCode(不填写不安装)      

### 注意事项

- 如果使用容器服务，请确保正确配置`storage`设置,否则会导致磁盘塞满，无法执行定时任务守护进程。

### 帮助命令

使用`--help`参数来获取脚本的帮助信息。如：
<img width="718" alt="image" src="https://github.com/qingjiuzys/titan-start/assets/142193034/304750c6-8d35-4105-aa6e-343a47666469">


### 示例命令

#### 更新版本
```
  rm -rf ~/update.sh && wget https://raw.githubusercontent.com/qingjiuzys/titan-start/main/update.sh && chmod +x update.sh && sudo ./update.sh --storage=填写你的硬盘-10G最后除以5
```

#### 安装titan 5个容器 + meson
```
  rm -rf ~/install.sh && wget https://raw.githubusercontent.com/qingjiuzys/titan-start/main/install.sh && chmod +x install.sh && sudo ./install.sh --type=1 --storage=8 --code=你的titan身份码 --meson_gaga_code=你的mesonGaga码
```

#### 安装titan 5个容器
```
  rm -rf ~/install.sh && wget https://raw.githubusercontent.com/qingjiuzys/titan-start/main/install.sh && chmod +x install.sh && sudo ./install.sh --type=1 --storage=8 --code=你的titan身份码
```

#### 批量单独安装meson
```
 rm -rf ~/meson-install-v0.01.sh && wget https://raw.githubusercontent.com/qingjiuzys/titan-start/main/meson-install-v0.01.sh && chmod +x meson-install-v0.01.sh && sudo ./meson-install-v0.01.sh --meson_gaga_code=你的mesonGaga码
```

#### NFS使用说明 
```
  NFS使用时，会自动将目录挂载 /mnt/titan/+12位随机字符串的目录里，对于不同主机并未做规定。
```

#### 测试明细 

<img width="1706" alt="image" src="https://github.com/qingjiuzys/titan-start/assets/142193034/bf9c60eb-1827-42e0-8d7c-23b9d58cba71">


#### titan已测试系统:

- Ubuntu 18.04
- Debian （不推荐）
- OpenCloudOS 8 （不推荐）

#### meson已测试系统:
- Ubuntu 18.04

#### 不支持的系统：
- CentOS

## 创作不易请作者喝茶
<img width="200" alt="image" src="https://github.com/qingjiuzys/miner/assets/142193034/05ebaaf3-fa68-4133-b22a-7029cd1cc881">



## 鸣谢（以下排名不分先后）
- 苟*****或 50元
- n*****n   30元
- qx****77  20元
- Di****xx  10元
- intz***o  19.9元
- 当*****归  8.8元
- 长*****风  18.8元
