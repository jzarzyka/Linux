#!/bin/bash

echo "KALKULATOR"
echo "1. "+""
echo "2. "-""
echo "3. "*""
echo "4. "/""
echo "Wybierz numer dzialania: ";
read dzialanie
echo "Podaj pierwsza liczbe: "
read l1
echo "Podaj druga liczbe: "
read l2


if [ $dzialanie == "1" ]; then
	echo "Dodawanie:"
	wynik=$[ $l1 + $l2 ];
	echo "$l1 + $l2 = $wynik";
fi

if [ $dzialanie == "2" ]; then
	echo "Odejmowanie:"
	wynik=$[ $l1 - $l2 ];
	echo "$l1 - $l2 = $wynik";
fi

if [ $dzialanie == "3" ]; then
	echo "Mnozenie:"
	wynik=$[ $l1 * $l2 ];
	echo "$l1 * $l2 = $wynik";
fi

if [ $dzialanie == "4" ]; then
	echo "Dzielenie:"
	wynik=$[ $l1 / $l2 ];
	echo "$l1 / $l2 = $wynik";
fi
