#!/bin/bash
gnome-terminal --tab --title "2bmbS1 IOC" -- bash -c "ssh -t 2bmb@arcturus \
'bash ~/scripts/kill_IOC.sh 2bmbS1;  \
cd /net/s2dserv/xorApps/epics/synApps_5_8/ioc/2bmS1/iocBoot/ioc2bmS1Linux/; \
./2bmS1.sh start;\
bash'" 