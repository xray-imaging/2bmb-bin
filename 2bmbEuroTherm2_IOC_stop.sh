#!/bin/bash
gnome-terminal --tab --title "2bmEuroTherm2 IOC" -- bash -c "ssh -t 2bmb@arcturus \
'cd /net/s2dserv/xorApps/epics/synApps_6_2_1/ioc/2bmEuroTherm/iocBoot/ioc2bmEuroTherm2/softioc; \
./2bmEuroTherm2.sh stop;
'" 

