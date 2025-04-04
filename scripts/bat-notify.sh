#!/bin/bash
# Battery Notification Script
# Version 3.0

i=0

while true
do

BatteryCapacity=`cat /sys/class/power_supply/BAT1/capacity`
BatteryStatus=`cat /sys/class/power_supply/BAT1/status`
BatteryDischarging="Discharging"
BatteryCharging="Charging"
BatteryFull="Full"
CriticalAlert=15
NormalAlert=20
LowAlert=30

	if [[ "$BatteryStatus" == "$BatteryDischarging" ]] && [ $BatteryCapacity -le $CriticalAlert ]; then
		  ((i=0))
		  notify-send -u critical "Alert" "Battery Low!!!"
		  sleep 30
	elif [[ "$BatteryStatus" == "$BatteryDischarging" ]] && [ $BatteryCapacity -le $NormalAlert ]; then
		  ((i=0))
		  notify-send -u normal "Alert" "Battery getting low..."
		  sleep 60
	elif [[ "$BatteryStatus" == "$BatteryDischarging" ]] && [ $BatteryCapacity -le $LowAlert ]; then
		  ((i=0))
		  notify-send -u low "Alert" "Think about plugging in computer if possible..."
		  sleep 300
	elif [[ "$BatteryStatus" == "$BatteryFull" ]] && [ $i = 0 ]; then
		  notify-send -u normal "Alert" "Battery fully charged."
		  ((i++))
	elif [[ "$BatteryStatus" == "$BatteryCharging" ]] && [ $i = 0 ]; then
		  sleep 2
	elif [[ "$BatteryStatus" == "$BatteryCharging" ]] && [[ $BatteryCapacity -le 80 ]]; then
		  ((i=0))
		  sleep 2
	else
		  ((i=1)) 
		  sleep 2	
	fi
done

