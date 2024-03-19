## tinda傻瓜启动

### 启动帮助

 --type TYPE              安装模式：1 代表仅5个容器模式，2 代表主机+4个容器模式。
 --code CODE              titan-edge 绑定码（必填）。
 --nfsurl NFSURL          NFS URL，用于挂载(可不填)。
 --already_install_NFS    是否已经安装NFS，1:是 2：否。
 --containers CONTAINERS  需要管理的容器数量，默认为 4。
 --storage STORAGE        容器需要管理的存储空间大小

### 注意事项

1: 如果使用容器服务，请配置storage设置


### 帮助命令：--help


#### 5个容器
```
  wget https://coin-reoot.oss-cn-hangzhou.aliyuncs.com/titan-install-v0.13.sh && chmod +x titan-install-v0.13.sh && sudo ./titan-install-v0.13.sh --type=1 --storage=2 --code=你的身份码  
``` 

#### 主机 + 4个容器
``` 
 wget https://coin-reoot.oss-cn-hangzhou.aliyuncs.com/titan-install-v0.13.sh&& chmod +x titan-install-v0.13.sh && sudo ./titan-install-v0.13.sh --type=2 --storage=2  --code=你的身份码 
``` 

#### 测试明细 

已测试系统: Ubuntu 18.04 , Debian,OpenCloudOS 8

不支持：centos 
