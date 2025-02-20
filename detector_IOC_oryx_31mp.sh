gnome-terminal --tab --title "ADetector IOC" -- bash -c "ssh -t 2bmb@tomdet \
'bash ~/scripts/kill_screen.sh 2bmbP2;  \
/net/s2dserv/xorApps/epics/synApps_6_3/ioc/2bmSpinnaker/iocBoot/ioc2bmSP2/softioc/2bmSP2.pl stop; \
sleep 1; \
/net/s2dserv/xorApps/epics/synApps_6_3/ioc/2bmSpinnaker/iocBoot/ioc2bmSP2/softioc/2bmSP2.pl  start; \
sleep 1; \
/net/s2dserv/xorApps/epics/synApps_6_3/ioc/2bmSpinnaker/iocBoot/ioc2bmSP2/softioc/2bmSP2.pl  console; \
bash'" 


