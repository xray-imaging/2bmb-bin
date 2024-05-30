gnome-terminal --tab --title "energy IOC" -- bash -c "ssh -t 2bmb@pg10ge \
'bash ~/bin/kill_IOC.sh energyApp;  \
bash ~/bin/kill_server.sh start_energy.py; \
bash'" 

