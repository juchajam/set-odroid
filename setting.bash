#!/bin/bash
wget https://github.com/jenssegers/RTL8188-hostapd/archive/v2.0.tar.gz
tar -zxvf v2.0.tar.gz
cd RTL8188-hostapd-2.0/hostapd/
sudo make
sudo make install
sudo cp hostapd.conf /etc/hostapd/hostapd.conf
sudo systemctl unmask hostapd
sudo systemctl enable hostapd
sudo systemctl start hostapd
sudo apt update
sudo apt install dnsmasq ros-noetic-robot-upstart
sudo cp interfaces /etc/network/interfaces
sudo cp dnsmasq.conf /etc/dnsmasq.conf
sudo cp rc.local /etc/rc.local
rosrun robot_upstart install --master http://192.168.1.1:11311 stella_bringup/launch/stella_robot.launch --job stella_robot --symlink
