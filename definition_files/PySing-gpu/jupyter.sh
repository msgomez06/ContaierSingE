#!/bin/bash

source /opt/miniconda/etc/profile.d/conda.sh
conda activate PySing

cd ~

# Check if configuration exists
if test -e ".jupyter/jupyter_notebook_config.json"; then
    read -p 'Please input the port number to use: ' port_num
        
    read -p "Do you want to change the running directory? (Default is /work/)? [y,n]: " doit 
   
    case $doit in  
      y|Y) read -p "Please input the path: " directory
            if ! [[ -d $directory ]]
            then
                echo "Directory doesn't exist, using /work/... "
                directory=/work/
                fi
            ;; 
      n|N) directory=/work/;; 
      *) echo "error, defaulting to /work/...."
         directory=/work/
         ;; 
    esac
    
    
    jupyter-notebook --ip=$(hostname -i) --port=$port_num --no-browser --port-retries=0 --notebook-dir=$directory &
    
    
else
    echo "configuration file doesn't exist!"
    echo 'Please run the notebook-setup app'
fi
