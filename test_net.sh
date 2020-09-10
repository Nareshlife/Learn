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
##cd rtl8812AU_8821AU_linux
##sudo make -f Makefile.dkms install

##################################
##sudo modprobe rtl8812au
########### Working  modprobe Below
##sudo modprobe rtl8188fu
####################################
#If you're building on an ARM architecture, then check this issue, it may help.
#How to install
#sudo apt-get install build-essential git dkms linux-headers-$(uname -r)
#
#git clone https://github.com/corneal64/Realtek-USB-Wireless-Adapter-Drivers.git
#
#cd Realtek-USB-Wireless-Adapter-Drivers
#
#sudo dkms add ./rtl8188fu
#
#sudo dkms build rtl8188fu/1.0
#
#sudo dkms install rtl8188fu/1.0
#
#sudo cp ./rtl8188fu/firmware/rtl8188fufw.bin /lib/firmware/rtlwifi/
#
#Disable power management and solve plugging/replugging issues
#sudo mkdir -p /etc/modprobe.d/
#
#sudo touch /etc/modprobe.d/rtl8188fu.conf
#
#echo "options rtl8188fu rtw_power_mgnt=0 rtw_enusbss=0" | sudo tee /etc/modprobe.d/rtl8188fu.conf
#
#How to uninstall
#sudo dkms remove rtl8188fu/1.0 --all
#
#sudo rm -f /lib/firmware/rtlwifi/rtl8188fufw.bin
#
#sudo rm -f /etc/modprobe.d/rtl8188fu.conf