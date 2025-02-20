gnome-terminal --tab --title "energy IOC" -- bash -c "ssh -t 2bmb@tomdet \
'bash ~/bin/kill_IOC.sh energyApp;  \
bash ~/bin/kill_server.sh start_energy.py; \
cd /home/beams/2BMB/epics/synApps/support/energy/iocBoot/iocEnergy_2BM/; \
./start_IOC;\
bash'" 

