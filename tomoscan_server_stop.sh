gnome-terminal --tab --title "tomoScan py server" -- bash -c "ssh -t 2bmb@tomdet \
'bash ~/scripts/kill_server.sh start_tomoscan.py;  \
bash'" 