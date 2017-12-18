#!/bin/bash

numcards=6
pl=130
fan=65
mem=750
clock=150

for ((i=0; i<$numcards; i++))
	do
		nvidia-smi -i $i -pm 1
		nvidia-smi -i $i -pl $pl
		nvidia-settings -a [gpu:$i]/GPUFanControlState=1
		nvidia-settings -a [fan:$i]/GPUTargetFanSpeed=$fan
		nvidia-settings -c :0 -a [gpu:$i]/GPUMemoryTransferRateOffset[3]=$mem
		nvidia-settings -c :0 -a [gpu:$i]/GPUGraphicsClockOffset[3]=$clock
	done
