#!/bin/bash
# STEPS TO TAKE
# 1. Write to /etc/resolv.conf using sudo to run the echo command as root.
# 2. Add nameserver's IP addresses 208.67.222.220 and 208.67.222.222.
# 3. Connect to SSID YSC-SPARK using gosaints as the key.
# 4. Open Kahn Academy (kahnacademy.org) to confirm.
sudo sh -c "{ echo nameserver 208.67.222.220; echo nameserver 208.67.222.222; } > /etc/resolv.conf"
ifconfig wlan0 up
iwconfig wlan0 essid YSC-SPARK key s:gosaints
dhclient wlan0
echo "CONNECTED TO WIFI!"
xdg-open http://kahnacademy.org/
done
