#!/bin/bash

:'TODO: Parse environment name to make environment agnostic
'
source /opt/miniconda/etc/profile.d/conda.sh
conda activate PySing
python3 $1