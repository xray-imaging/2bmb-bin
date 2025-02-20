gnome-terminal --tab --title "energy py server" -- bash -c "ssh -t 2bmb@tomdet \
'bash ~/bin/kill_server.sh start_energy.py;  \
bash'" 
