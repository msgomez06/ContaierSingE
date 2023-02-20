#!/bin/bash

source /opt/miniconda/etc/profile.d/conda.sh
export PATH=/opt/miniconda/bin:$PATH
export PYTHONPATH=/opt/miniconda3/bin:$PATH
export CONDA_ALWAYS_YES="true"

conda update -n base conda
conda install -c conda-forge mamba
mamba env update --file /opt/PySing.yml --prune -q
conda activate PySing
mamba install -c conda-forge jupyter jupyter_contrib_nbextensions

export CONDA_ALWAYS_YES="false"
