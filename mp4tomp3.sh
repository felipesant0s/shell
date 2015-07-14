#!/bin/bash

pacpli=($(/usr/bin/aptitude search pacpl | awk '{print $1}'))
  if [ "$pacpli" == "i" ]; then
	echo -n "Qual arquivo deseja converter?: "
	read arq
	pacpl --to mp3 -v -r -bitrate 320 $arq
  else
  	echo -n "pacpl not installed, you want to install ? [y] or [n] "
	read question
	if [ "$question" == "y" ]; then
	  sudo aptitude install pacpl
	else
	  exit 1
	fi
  fi
