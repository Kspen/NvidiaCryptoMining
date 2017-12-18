#!/bin/bash
echo performance > /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor
echo performance > /sys/devices/system/cpu/cpu1/cpufreq/scaling_governor
echo "Verifying Scaling Governor";
cat /sys/devices/system/cpu/cpu*/cpufreq/scaling_governor
