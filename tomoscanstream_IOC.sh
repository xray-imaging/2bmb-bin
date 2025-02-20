gnome-terminal --tab --title "tomoScanStream IOC" -- bash -c "ssh -t 2bmb@tomdet \
'bash ~/scripts/kill_IOC.sh tomoScanApp;  \
bash ~/scripts/kill_server.sh start_tomoscan.py; \
cd /home/beams/USER2BMB/epics/synApps/support/tomoscan/iocBoot/iocTomoScanStream_2BMB/; \
./start_IOC;\
bash'" 

