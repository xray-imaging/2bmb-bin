gnome-terminal --tab --title "tomoScan py server" -- bash -c "ssh -t 2bmb@tomdet \
'bash ~/scripts/kill_server.sh start_tomoscan.py;  \
cd /home/beams/USER2BMB/epics/synApps/support/tomoscan/iocBoot/iocTomoScan_2BMB/; \
bash -c \"source ~/.bashrc; conda activate tomoscan; python -i start_tomoscan.py\";\
bash'" 