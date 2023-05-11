# Tested on Kali Linux 44.0
# Commands used to Setup the Adapter from aircrack repository
apt update
apt install bc -y
rmmod r8188eu.ko
git clone https://github.com/aircrack-ng/rtl8188eus
cd rtl8188eus
sudo -i
echo "blacklist r8188eu" > "/etc/modprobe.d/realtek.conf"
exit
make
make install
modprobe 8188eu

# Commands to enable monitor mode after setting up
ifconfig wlan0 down
airmon-ng check kill
iwconfig wlan0 mode monitor
ifconfig wlan0 up
iwconfig

# Play with airodump-ng to test :)
airodump-ng wlan0