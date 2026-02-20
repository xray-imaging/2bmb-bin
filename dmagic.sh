#!/usr/bin/env bash

TAB_NAME="DMagic"
REMOTE_USER="2bmb"
REMOTE_HOST="arcturus"
CONDA_ENV="dm"

gnome-terminal --tab --title="$TAB_NAME" -- bash -lc "
ssh -t ${REMOTE_USER}@${REMOTE_HOST} 'bash -lc \"
  conda run -n ${CONDA_ENV} dmagic tag
  exec bash
\"'
exec bash
"
