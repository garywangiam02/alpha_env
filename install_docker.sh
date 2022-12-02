#!/bin/bash
echo "begin install docker "
sudo apt-get install -y ca-certificates curl gnupg lsb_release lrzsz net-tools firewalld wget;
sudo apt -y install software-properties-common dirmngr apt-transport-https lsb-release ca-certificates

apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 7EA0A9C3F273FCD8

sudo add-apt-repository \
  "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

sudo apt-get install docker-ce docker-ce-cli containerd.io

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg;
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null;

#安装docker-运行时
sudo apt-get install docker-ce docker-ce-cli containerd.io;
#启动docker
systemctl start docker;
sudo systemctl daemon-reload;
sudo systemctl restart docker;
sudo docker info;
echo "end install docker "
echo "begin install docker-compose "
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose
echo "end install docker-compose "
