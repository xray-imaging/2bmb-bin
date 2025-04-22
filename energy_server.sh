#!/bin/bash

# Define variables
TAB_NAME="energy py server"
REMOTE_USER="2bmb"
REMOTE_HOST="tomdet"
CONDA_ENV="ops"
SCRIPT_NAME="start_energy.py"
WORK_DIR="/home/beams/2BMB/epics/synApps/support/energy/iocBoot/iocEnergy_2BM/"

# Open a new tab in gnome-terminal, SSH into tomdet, activate conda, and run Python (without login shell)
gnome-terminal --tab --title="$TAB_NAME" -- bash -c "
    ssh -t ${REMOTE_USER}@${REMOTE_HOST} '
        cd ${WORK_DIR}
        conda activate ${CONDA_ENV}
        kill_server.sh ${SCRIPT_NAME}
        python -i ${SCRIPT_NAME}
    ';
"

