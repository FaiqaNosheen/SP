#!/bin/bash

if [ $# -eq 1 ]
then
	for pid in `pidof $1`
	do
		echo `cat /proc/$pid/status | grep "Pid"`
		echo `cat /proc/$pid/status | grep "Name"`
		echo `cat /proc/$pid/status | grep "State"`
		echo `cat /proc/$pid/status | grep "PPid"`
		
	done
fi
