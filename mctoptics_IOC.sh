#!/bin/bash

# Define variables
TAB_NAME="mctOptics IOC"
REMOTE_USER="2bmb"
REMOTE_HOST="tomdet"
APP_NAME="mctOpticsApp"
WORK_DIR="/home/beams/2BMB/epics/synApps/support/mctoptics/iocBoot/iocMCTOptics/"

# Open a new tab in gnome-terminal, SSH into tomdet, activate conda, and run Python (without login shell)
gnome-terminal --tab --title="$TAB_NAME" -- bash -c "
    ssh -t ${REMOTE_USER}@${REMOTE_HOST} '
        kill_IOC.sh ${APP_NAME}
        cd ${WORK_DIR}
        ./start_IOC;
    ';
"

