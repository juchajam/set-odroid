#!/bin/bash
sudo apt update
sudo apt install hostapd dnsmasq ros-noetic-robot-upstart
sudo cp dnsmasq.conf /etc/dnsmasq.conf
sudo cp hostapd.conf /etc/hostapd/hostapd.conf
sudo cp rc.local /etc/rc.local
rosrun robot_upstart install --master http://192.168.1.1:11311 stella_bringup/launch/stella_robot.launch --job stella_robot --symlink