bash ./install_alpha.sh
source ~/.bashrc
source activate 
conda deactivate 
conda activate alpha


conda install -c conda-forge ta-lib==0.4.19
pip install -r requirements.txt
