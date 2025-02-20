#!/bin/bash
gnome-terminal --tab --title "2bmbAERO IOC" -- bash -c "ssh -t 2bmb@arcturus \
'bash ~/scripts/kill_IOC.sh 2bmbAERO;  \
cd /net/s2dserv/xorApps/epics/synApps_6_2_1/ioc/2bmbAERO/iocBoot/ioc2bmbAERO/softioc/; \
./2bmbAERO.sh start;\
bash'" 

