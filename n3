echo "deb http://mirrors.aliyun.com/ubuntu/ jammy main" >> /etc/apt/sources.list
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 112695A0E562B32A 54404762BBB6E853
sudo apt update
sudo apt list --upgradable   
wget https://network3.io/ubuntu-node-v1.0.tar
ufw allow 8080
tar -xf ubuntu-node-v1.0.tar
cd ubuntu-node
sudo bash manager.sh up
curl ip.gs | awk '{print $1}' | xargs -I {} echo "浏览器访问地址: https://account.network3.ai/main?o={}:8080"
