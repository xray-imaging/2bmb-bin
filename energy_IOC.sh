#!/bin/bash

# Define variables
TAB_NAME="energy IOC"
REMOTE_USER="2bmb"
REMOTE_HOST="tomdet"
SCRIPT_NAME="start_energy.py"
APP_NAME="energyApp"
WORK_DIR="/home/beams/2BMB/epics/synApps/support/energy/iocBoot/iocEnergy_2BM/"

# Open a new tab in gnome-terminal, SSH into tomdet, activate conda, and run Python (without login shell)
gnome-terminal --tab --title="$TAB_NAME" -- bash -c "
    ssh -t ${REMOTE_USER}@${REMOTE_HOST} '
        kill_IOC.sh ${APP_NAME}
        cd ${WORK_DIR}
        ./start_IOC;
    ';
"

