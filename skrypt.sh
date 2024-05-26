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
	--help)
	echo "--date	Wyświetlenie dzisiejszej daty"
	echo "--logs	Generuje automatycznie 100 plików log z nazwą pliku, skryptu który to wykonał i dzisiejszą datą"
	echo "--logs jakas_liczba	generuje podaną ilość plików log"
esac
