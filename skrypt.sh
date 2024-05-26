#!/bin/bash

case $1 in
	--date)
	echo "Dzisiejsza data:"
	date
	;;
	--logs)
	ilosc=100
	if [ ! -z "$2" ]; then
		ilosc=$2
	fi
	for i in $(seq 1 $ilosc); do
		plik="log${i}.txt"
		echo -e "Nazwa pliku: $plik \nNazwa skryptu: skrypt.sh \nData: $(date)" > $plik
	done
	;;
esac
