gnome-terminal --tab --title "mctOptics py server" -- bash -c "ssh -t 2bmb@pg10ge \
'bash ~/bin/kill_server.sh start_mctoptics.py;  \
bash'" 
