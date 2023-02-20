#!/bin/bash

source /opt/miniconda/etc/profile.d/conda.sh
export PATH=/opt/miniconda/bin:$PATH
export PYTHONPATH=/opt/miniconda3/bin:$PATH
export CONDA_ALWAYS_YES="true"

conda update -n base conda
conda install -c conda-forge 'python<=3.9.15'
conda install -c conda-forge mamba
mamba env create -f /opt/dev_env.yml -q

conda clean --all --yes

export CONDA_ALWAYS_YES="false"
