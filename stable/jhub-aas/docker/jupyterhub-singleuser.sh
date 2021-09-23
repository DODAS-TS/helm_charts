#!/bin/bash

source /cvmfs/cms.dodas.infn.it/miniconda3/etc/profile.d/conda.sh
conda activate cms-dodas

export PYTHONPATH=/root/.local/lib/python3.9/site-packages/:$PYTHONPATH

python /usr/local/bin/jupyterhub-singleuser "$@"