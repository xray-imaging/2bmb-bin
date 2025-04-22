#!/bin/bash

# Define variables
TAB_NAME="Eurotherm1 IOC"
REMOTE_USER="2bmb"
REMOTE_HOST="arcturus"
WORK_DIR="/net/s2dserv/xorApps/epics/synApps_6_2_1/ioc/2bmEuroTherm/iocBoot/ioc2bmEuroTherm1/softioc"

# Open a new tab in gnome-terminal, SSH into tomdet, activate conda, and run Python (without login shell)
gnome-terminal --tab --title="$TAB_NAME" -- bash -c "
    ssh -t ${REMOTE_USER}@${REMOTE_HOST} '
        cd ${WORK_DIR}
        ./2bmEuroTherm1.sh stop
        sleep 2
        ./2bmEuroTherm1.sh run
        sleep 2
    ';
"

