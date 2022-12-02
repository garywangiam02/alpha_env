#!/bin/bash

echo "begin apt-get upgrade "
sudo apt-get upgrade
sudo apt-get update
echo "end apt-get upgrade "

echo "begin intall tools "
apt-get -y install git htop 
echo "end install tools "

bash ./install_bash.sh
bash ./install_anaconda.sh
bash ./install_ta_lib.sh
bash install_alpha_env.sh
bash ./install_swap.sh

# 以下工具为可选项
bash ./install_pm2.sh
bash ./install_docker.sh
