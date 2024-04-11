# =====================
# https://www.ator.io/
# =====================
# 说要做区块链的匿名网络，可以跑，目前官方还没出仪表盘。

sudo mkdir /opt/compose-files/
sudo mkdir -p /opt/anon/etc/anon/
sudo mkdir -p /opt/anon/run/anon/
sudo mkdir -p /root/.nyx/
sudo chmod -R 700 /opt/anon/run/anon/
sudo chown -R 100:101 /opt/anon/run/anon/
sudo touch /opt/anon/etc/anon/notices.log
sudo chown 100:101 /opt/anon/etc/anon/notices.log
sudo useradd -M anond
sudo wget -O /opt/compose-files/relay.yaml https://raw.githubusercontent.com/ATOR-Development/anon-install/main/docker/anon-relay/relay.yaml
sudo wget -O /opt/anon/etc/anon/anonrc https://raw.githubusercontent.com/ATOR-Development/anon-install/main/docker/anon-relay/anonrc
sudo wget -O /root/.nyx/config https://raw.githubusercontent.com/ATOR-Development/anon-install/main/docker/anon-relay/config
sudo docker compose -f /opt/compose-files/relay.yaml up -d
