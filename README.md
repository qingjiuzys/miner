# Titan 一键启动指南

##  [Titan特别邀请链接(点击注册)](https://test1.titannet.io/intiveRegister?code=wLFnFN)

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

使用`--help`参数来获取脚本的帮助信息。

### 示例命令

#### 配置5个容器
```
  wget https://coin-reoot.oss-cn-hangzhou.aliyuncs.com/titan-install-v0.13.sh && chmod +x titan-install-v0.13.sh && sudo ./titan-install-v0.13.sh --type=1 --storage=2 --code=你的身份码  
``` 

#### 主机 + 4个容器
``` 
 wget https://coin-reoot.oss-cn-hangzhou.aliyuncs.com/titan-install-v0.13.sh&& chmod +x titan-install-v0.13.sh && sudo ./titan-install-v0.13.sh --type=2 --storage=2  --code=你的身份码 
``` 

#### 测试明细 

<img width="1706" alt="image" src="https://github.com/qingjiuzys/titan-start/assets/142193034/bf9c60eb-1827-42e0-8d7c-23b9d58cba71">


#### 已测试系统:

- Ubuntu 18.04
- Debian
- OpenCloudOS 8

#### 不支持的系统：

- CentOS


## 请喝咖啡～
<img width="400" alt="image" src="https://github.com/qingjiuzys/titan-start/assets/142193034/98e12354-49cc-43c0-b659-95e68892abe4">

## 远程技术支持（需要100个节点以上）
<img width="400" alt="image" src="https://github.com/qingjiuzys/titan-start/assets/142193034/80729a2b-deaa-48a4-9ef7-e330a6616bf2">



