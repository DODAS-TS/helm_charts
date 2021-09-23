#!/bin/bash

# Configure oidc-agent for user token management
echo "eval \`oidc-keychain\`" >> ~/.bashrc
eval `oidc-keychain`
oidc-gen dodas --issuer $IAM_SERVER \
               --client-id $IAM_CLIENT_ID \
               --client-secret $IAM_CLIENT_SECRET \
               --rt $REFRESH_TOKEN \
               --confirm-yes \
               --scope "openid profile email wlcg wlcg.groups" \
               --redirect-uri  http://localhost:8843 \
               --pw-cmd "echo \"DUMMY PWD\""

while true; do oidc-token dodas --time 1200 > /tmp/token; sleep 600; done &

if [[ -f "cvmfs/cms.dodas.infn.it/miniconda3/etc/profile.d/conda.sh" ]]; then
    source /cvmfs/cms.dodas.infn.it/miniconda3/etc/profile.d/conda.sh
    conda activate cms-dodas
    /root/.local/lib/python3.9/site-packages/
    export PYTHONPATH=/opt/conda/lib/python3.9/site-packages/:$PYTHONPATH
fi