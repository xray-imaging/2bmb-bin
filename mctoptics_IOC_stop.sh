gnome-terminal --tab --title "mctOptics IOC" -- bash -c "ssh -t 2bmb@pg10ge \
'bash ~/bin/kill_IOC.sh mctOpticsApp;  \
bash ~/bin/kill_server.sh start_mctoptics.py; \
bash'" 

