#!/bin/bash

if [ -e /c/Users/DELL/desktop/name ]
then 
	echo " file exist"
else
	echo " file does not exist"
	pwd
	timestamp=$(date +"%y-%m-%d_%H-%M-%S" | cut -d ' ' -f 1)
	touch "TECHIEHORION_$timestamp.log"
fi
