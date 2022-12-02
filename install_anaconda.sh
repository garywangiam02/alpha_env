#!/bin/bash
echo "begin install Anaconda "
wget https://repo.anaconda.com/archive/Anaconda3-2021.11-Linux-x86_64.sh
sudo bash Anaconda3-2021.11-Linux-x86_64.sh -u
echo "end install Anaconda "

echo '
export PATH=/root/anaconda3/bin/bin:${PATH}
' >> ~/.bashrc
