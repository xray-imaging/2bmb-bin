#!/bin/bash
gnome-terminal --tab --title "2bmbS1 IOC" -- bash -c "ssh -t 2bmb@arcturus \
'bash ~/scripts/kill_IOC.sh 2bmbS1;  \
bash'" 