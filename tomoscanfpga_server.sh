#!/bin/bash

# Define variables
TAB_NAME="tomoScanFPGA py server"
REMOTE_USER="2bmb"
REMOTE_HOST="tomdet"
CONDA_ENV="tomoscan"
SCRIPT_NAME="start_tomoscan.py"
WORK_DIR="/home/beams/2BMB/epics/synApps/support/tomoscan/iocBoot/iocTomoScanFPGA_2BMB/"

# Open a new tab in gnome-terminal, SSH into tomdet, activate conda, and run Python (without login shell)
gnome-terminal --tab --title="$TAB_NAME" -- bash -c "
    ssh -t ${REMOTE_USER}@${REMOTE_HOST} '
        cd ${WORK_DIR}
        conda activate ${CONDA_ENV}
        kill_server.sh ${SCRIPT_NAME}
        python -i ${SCRIPT_NAME}
    ';
"


