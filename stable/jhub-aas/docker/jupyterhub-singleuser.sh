#!/bin/bash

source /cvmfs/cms.dodas.infn.it/miniconda3/etc/profile.d/conda.sh
conda activate cms-dodas

python /usr/local/bin/jupyterhub-singleuser "$@"