#!/bin/bash

echo 5300 | sudo tee /sys/devices/platform/hp-wmi/hwmon/hwmon*/fan1_target
echo 5600 | sudo tee /sys/devices/platform/hp-wmi/hwmon/hwmon*/fan2_target
