# Titan + Meson 一键启动指南

##  [Titan特别邀请链接(点击注册)](https://test1.titannet.io/intiveRegister?code=wLFnFN)

##  [meson特别邀请链接(点击注册)](https://dashboard.gaganode.com/register?referral_code=qpkofealpfaomjb)

### 特性

- 支持NFS启动五个节点
- 支持百万台直接启动
- 支持实时挂在NFS
- 支持自定义容器数量
- 支持自定义存储空间管理
- 支持三个系统 Ubuntu 18.04， Debian， OpenCloudOS 8
- 修复了官方容器无法绑定身份码的问题
- 支持容器 + 主机的部署模式
- 支持自动恢复（磁盘足够的情况下定时任务会生效并自动重启）
- 双挖titan + meson一键启动
  
### 启动帮助

在使用脚本前，请确保了解以下参数的用途：

- `--type TYPE`：安装模式。1 代表仅5个容器模式，2 代表主机+4个容器模式。
- `--code CODE`：Titan-Edge 绑定码（必填）。
- `--nfsurl NFSURL`：NFS URL，用于挂载（可选填）。
- `--already_install_NFS`：是否已经安装NFS，1 表示是，2 表示否。
- `--containers CONTAINERS`：需要管理的容器数量，默认为 4。
- `--storage STORAGE`：容器需要管理的存储空间大小。

### 注意事项

- 如果使用容器服务，请确保正确配置`storage`设置。

### 帮助命令

使用`--help`参数来获取脚本的帮助信息。如：
<img width="718" alt="image" src="https://github.com/qingjiuzys/titan-start/assets/142193034/304750c6-8d35-4105-aa6e-343a47666469">


### 示例命令
#### 配置titan 5个容器 + meson
```
  wget https://raw.githubusercontent.com/qingjiuzys/titan-start/main/install.sh && chmod +x install.sh && sudo ./install.sh --type=1 --storage=2 --code=你的titan身份码 --meson_gaga_code=你的mesonGaga码 --meson_cdn_code=你的mesonCDN码
```


#### 配置5个容器
```
  wget https://raw.githubusercontent.com/qingjiuzys/titan-start/main/titan-install-v0.13.sh && chmod +x titan-install-v0.13.sh && sudo ./titan-install-v0.13.sh --type=1 --storage=2 --code=你的身份码
```

#### 同地区加机器无限制跑
```
   rm -rf ~/*.sh && wget https://raw.githubusercontent.com/qingjiuzys/titan-start/main/titan-install-v0.13.sh && chmod +x titan-install-v0.13.sh && sudo ./titan-install-v0.13.sh --type=1 --storage=2 --code=你的身份码  
``` 

#### 主机 + 4个容器
``` 
 wget https://raw.githubusercontent.com/qingjiuzys/titan-start/main/titan-install-v0.13.sh && chmod +x titan-install-v0.13.sh && sudo ./titan-install-v0.13.sh --type=2 --storage=2  --code=你的身份码 
``` 

#### 测试明细 

<img width="1706" alt="image" src="https://github.com/qingjiuzys/titan-start/assets/142193034/bf9c60eb-1827-42e0-8d7c-23b9d58cba71">


#### titan已测试系统:

- Ubuntu 18.04
- Debian
- OpenCloudOS 8


#### meson已测试系统:
- Ubuntu 18.04

#### 不支持的系统：
- CentOS


## 请喝咖啡～
<img width="400" alt="image" src="https://github.com/qingjiuzys/titan-start/assets/142193034/6f167d6a-a510-449b-99c6-0a36b08b828e">

## 邀请注册加V进群
<img width="400" alt="image" src="https://github.com/qingjiuzys/titan-start/assets/142193034/80729a2b-deaa-48a4-9ef7-e330a6616bf2">



