#!/bin/bash

numcards=6
hightemp=70
highspeed=100
medtemp=68
medspeed=75
lowtempa=65
lowspeeda=70
lowtempb=60
lowspeedb=60
lowestspeed=60

while :
do
for ((i=0; i<$numcards; i++))
	do
		temp=$(nvidia-settings -q [gpu:$i]/gpucoretemp -t 2>&1)
		if ((temp >= hightemp)); then
			nvidia-settings -a [fan:$i]/GPUTargetFanSpeed=$highspeed
		else
			if ((temp >= medtemp)); then
				nvidia-settings -a [fan:$i]/GPUTargetFanSpeed=$medspeed
			else
				if ((temp >= lowtempa)); then
					nvidia-settings -a [fan:$i]/GPUTargetFanSpeed=$lowspeeda
				else
					if ((temp >= lowtempb)); then
						nvidia-settings -a [fan:$i]/GPUTargetFanSpeed=$lowspeedb
					else
						if ((temp < lowtempb)); then
						nvidia-settings -a [fan:$i]/GPUTargetFanSpeed=$lowestspeed
						fi
					fi
				fi
			fi
		fi
	done
sleep 10
done
