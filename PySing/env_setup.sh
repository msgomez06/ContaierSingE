#!/bin/bash

source /opt/miniconda/etc/profile.d/conda.sh
export PATH=/opt/miniconda/bin:$PATH
export PYTHONPATH=/opt/miniconda3/bin:$PATH
export CONDA_ALWAYS_YES="true"

conda update -n base conda
conda install -c conda-forge pip
conda env update --file /opt/dev_env.yml --prune

conda clean --all --yes

export CONDA_ALWAYS_YES="false"
