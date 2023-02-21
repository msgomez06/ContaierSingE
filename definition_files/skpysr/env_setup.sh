#!/bin/bash
source /opt/miniconda/etc/profile.d/conda.sh
export PATH=/opt/miniconda/bin:$PATH
export PYTHONPATH=/opt/miniconda3/bin:$PATH
export CONDA_ALWAYS_YES="true"

conda update -n base conda -q
#conda install -c conda-forge 'python<=3.9.15'
conda install -c conda-forge mamba -q
mamba env create -f /opt/environment.yml -q

conda activate PySing
python3 -c 'import pysr; pysr.install()'

conda clean --all --yes

export CONDA_ALWAYS_YES="false"
