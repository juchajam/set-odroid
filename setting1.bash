#!/bin/bash
echo odroid | sudo apt update
echo 'blacklist r8188eu'|sudo tee -a '/etc/modprobe.d/realtek.conf'
git clone https://github.com/juchajam/rtl8188eus
reboot