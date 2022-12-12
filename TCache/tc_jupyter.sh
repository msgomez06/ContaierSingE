#!/bin/bash

source /opt/miniconda/etc/profile.d/conda.sh
conda activate tabea

cd ~

# Check if configuration exists
if test -e ".jupyter/jupyter_notebook_config.json"; then
    echo 'Please input the port number to use:'
    read port_num
    
    jupyter-notebook --ip=$(hostname -i) --port=$port_num --no-browser --port-retries=0
    
    
else
    echo "configuration file doesn't exist!"
    echo 'Please run the notebook-setup app'
fi

# load conda
source /opt/miniconda/etc/profile.d/conda.sh
