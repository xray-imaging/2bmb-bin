#!/bin/bash

# Define variables
TAB_NAME="2bmbS1 IOC"
REMOTE_USER="2bmb"
REMOTE_HOST="arcturus"
WORK_DIR="/net/s2dserv/xorApps/epics/synApps_5_8/ioc/2bmS1/iocBoot/ioc2bmS1Linux/"

# Open a new tab in gnome-terminal, SSH into tomdet, activate conda, and run Python (without login shell)
gnome-terminal --tab --title="$TAB_NAME" -- bash -c "
    ssh -t ${REMOTE_USER}@${REMOTE_HOST} '
        cd ${WORK_DIR}
        ./2bmS1.sh stop
        sleep 2
        ./2bmS1.sh run
    ';
"

