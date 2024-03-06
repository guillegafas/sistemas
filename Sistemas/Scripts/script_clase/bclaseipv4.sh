#! /bin/bash

while true; do
  read ip
  primer_octeto=$(echo $ip | cut -f1 -d.)

  if [[ $primer_octeto -ge 0 && $primer_octeto -lt 128 ]]; then
    echo "A"
  elif [[ $primer_octeto -ge 128 && $primer_octeto -lt 192 ]]; then
    echo "B"
  elif [[ $primer_octeto -ge 192 && $primer_octeto -lt 224 ]]; then
    echo "C"
  elif [[ $primer_octeto -ge 224 && $primer_octeto -lt 240 ]]; then
    echo "D"
  elif [[ $primer_octeto -ge 240 && $primer_octeto -lt 256 ]]; then
    echo "E"
  fi
done
