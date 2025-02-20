gnome-terminal --tab --title "energy py server" -- bash -c "ssh -t 2bmb@tomdet \
'bash ~/bin/kill_server.sh start_energy.py;  \
cd /home/beams/2BMB/epics/synApps/support/energy/iocBoot/iocEnergy_2BM/; \
bash -c \"source ~/.bashrc; conda activate ops; python -i start_energy.py\";\
bash'" 
