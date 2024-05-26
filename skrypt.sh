#!/bin/bash

case $1 in
	--date)
	echo "Dzisiejsza data:"
	date
	;;
	--logs)
	for i in {1..100}; do
		plik="log${i}.txt"
		echo -e "Nazwa pliku: $plik \nNazwa skryptu: skrypt.sh \nData: $(date)" > $plik
	done
	;;
esac
