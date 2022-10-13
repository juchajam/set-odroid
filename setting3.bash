#!/bin/bash
nmcli dev wifi hotspot ssid $1 password 12345678
sudo nano /etc/NetworkManager/system-connections/Hotspot.nmconnection