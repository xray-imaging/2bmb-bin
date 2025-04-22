#!/bin/bash

# Define variables
TAB_NAME="2bmbAERO IOC"
REMOTE_USER="2bmb"
REMOTE_HOST="arcturus"
WORK_DIR="/net/s2dserv/xorApps/epics/synApps_6_2_1/ioc/2bmbAERO/iocBoot/ioc2bmbAERO/softioc/"

# Open a new tab in gnome-terminal, SSH into tomdet, activate conda, and run Python (without login shell)
gnome-terminal --tab --title="$TAB_NAME" -- bash -c "
    ssh -t ${REMOTE_USER}@${REMOTE_HOST} '
        cd ${WORK_DIR}
        ./2bmbAERO.sh stop
    ';
"
