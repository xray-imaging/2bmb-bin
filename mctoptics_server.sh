gnome-terminal --tab --title "mctOptics py server" -- bash -c "ssh -t 2bmb@tomdet \
'bash ~/bin/kill_server.sh start_mctoptics.py;  \
cd /home/beams/2BMB/epics/synApps/support/mctoptics/iocBoot/iocMCTOptics/; \
bash -c \"source ~/.bashrc; conda activate ops; python -i start_mctoptics.py\";\
bash'" 
