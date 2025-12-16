#!/bin/bash

cd hp-wmi-fan-and-backlight-control/
make
sudo rmmod hp-wmi
sudo modprobe led_class_multicolor
sudo insmod hp-wmi.ko
echo 5300 | sudo tee /sys/devices/platform/hp-wmi/hwmon/hwmon*/fan1_target
echo 5600 | sudo tee /sys/devices/platform/hp-wmi/hwmon/hwmon*/fan2_target
