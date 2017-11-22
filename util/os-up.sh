#!/bin/sh

sudo ifconfig enp0s31f6 10.10.10.213 255.255.255.0
sudo python mtou/mtou.py -i 127.0.0.1 -p 10709 -O 10.10.10.213 -o 239.255.0.79 &
sudo python oscmon/oscmon.py -i 10.10.10.213 239.255.0.79 10709 
