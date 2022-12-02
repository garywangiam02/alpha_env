#!/bin/bash
echo "begin install requirements.txt "

/root/anaconda3/bin/conda update conda
/root/anaconda3/bin/conda -V
/root/anaconda3/bin/conda info --e

/root/anaconda3/bin/conda create -n alpha -y python=3.8.10

mkdir workspace
echo '
alias dp="conda alpha dp;cd /root/workspace/farm"
' >> ~/.bashrc


echo "end install requirements.txt "
