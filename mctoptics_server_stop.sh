#!/bin/bash

# Define variables
TAB_NAME="mctOptics py server stop"
REMOTE_USER="2bmb"
REMOTE_HOST="tomdet"
SCRIPT_NAME="start_mctoptics.py"

# Open a new tab in gnome-terminal, SSH into tomdet, activate conda, and run Python (without login shell)
gnome-terminal --tab --title="$TAB_NAME" -- bash -c "
    ssh -t ${REMOTE_USER}@${REMOTE_HOST} '
        kill_server.sh ${SCRIPT_NAME}
    ';
"

