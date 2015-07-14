#!/bin/bash
echo -n "Qual arquivo deseja converter?: "
read arq
pacpl --to mp3 -v -r -bitrate 320 $arq
