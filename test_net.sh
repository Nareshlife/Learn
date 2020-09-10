tracert6 -i wlx002e2d501f43 www.google.com 
tracert6 -i wlp2s0 www.google.com 
nmcli conn show --active

# sudo nmcli conn down a523b45e-ed90-4066-89e9-41339b707ca2
#sudo nmcli conn up a523b45e-ed90-4066-89e9-41339b707ca2

ping -c5 -I wlx002e2d501f43 www.google.com

ping -c5 -I wlp2s0 www.google.com

#sudo apt purge rtl8812au-dkms
#sudo apt install git
#git clone https://github.com/abperiasamy/rtl8812AU_8821AU_linux.git
#cd rtl8812AU_8821AU_linux
#sudo make -f Makefile.dkms install

#sudo modprobe rtl8812au