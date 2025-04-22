gnome-terminal --tab --title "tomoScanStream IOC" -- bash -c "ssh -t 2bmb@tomdet \
'bash ~/scripts/kill_IOC.sh tomoScanApp;  \
bash ~/scripts/kill_server.sh start_tomoscan.py; \
bash'" 

