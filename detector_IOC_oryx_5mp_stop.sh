gnome-terminal --tab --title "ADetector IOC" -- bash -c "ssh -t 2bmb@tomdet \
'bash ~/bin/kill_screen.sh 2bmSP1;  \
/net/s2dserv/xorApps/epics/synApps_6_3/ioc/2bmSpinnaker/iocBoot/ioc2bmSP1/softioc/2bmSP1.pl stop; \
bash'" 

