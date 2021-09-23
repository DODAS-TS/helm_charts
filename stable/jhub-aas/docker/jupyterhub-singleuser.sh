#!/bin/bash

#source /cvmfs/cms.dodas.infn.it/miniconda3/etc/profile.d/conda.sh
#conda activate cms-dodas

export PYTHONPATH=/opt/conda/lib/python3.9/site-packages/:$PYTHONPATH

source /cvmfs/cms.dodas.infn.it/miniconda3/envs/cms-dodas/bin/thisroot.sh

python /usr/local/bin/jupyterhub-singleuser "$@"