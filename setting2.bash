#!/bin/bash
cd rtl8188eus
make && echo odroid | sudo make install
reboot