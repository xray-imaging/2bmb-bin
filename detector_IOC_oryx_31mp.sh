#!/bin/bash

# Define variables
TAB_NAME="ADetector IOC"
REMOTE_USER="2bmb"
REMOTE_HOST="tomdet"
WORK_DIR="/net/s2dserv/xorApps/epics/synApps_6_3/ioc/2bmSpinnaker/iocBoot/ioc2bmSP2/softioc/"

# Open a new tab in gnome-terminal, SSH into tomdet, activate conda, and run Python (without login shell)
gnome-terminal --tab --title="$TAB_NAME" -- bash -c "
    ssh -t ${REMOTE_USER}@${REMOTE_HOST} '
        cd ${WORK_DIR}
        ./2bmSP2.pl stop
        sleep 2
        ./2bmSP2.pl run
    ';
"

