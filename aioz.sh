#===========================
# https://aioz.network/
#===========================
# 查看
# ./aioznode reward balance
# 提取
# ./aioznode reward withdraw --address 地址 --amount 数量aioz --priv-key-file privkey.json

apt install screen -y
curl -LO https://github.com/AIOZNetwork/aioz-dcdn-cli-node/files/13561211/aioznode-linux-amd64-1.1.0.tar.gz
tar xzf aioznode-linux-amd64-1.1.0.tar.gz
mv aioznode-linux-amd64-1.1.0 aioznode
./aioznode version
./aioznode keytool new --save-priv-key privkey.json
screen -dmS aioznode ./aioznode start --home nodedata --priv-key-file privkey.json
