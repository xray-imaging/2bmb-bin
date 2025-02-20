#!/bin/bash
gnome-terminal --tab --title "Eurotherm1 IOC" -- bash -c "ssh -t 2bmb@arcturus \
'cd /net/s2dserv/xorApps/epics/synApps_6_2_1/ioc/2bmEuroTherm/iocBoot/ioc2bmEuroTherm1/softioc; \
./2bmEuroTherm1.sh stop; \
bash ~/scripts/kill_IOC.sh 2bmEuroTherm1;  \
sleep 3; \
./2bmEuroTherm1.sh start;\
bash'" 

