#!/usr/bin/env bash

echo 'podaj imie, nazwisko i pesel'

read imie
read nazwisko
read -N 10 pesel

echo $imie
echo $nazwisko
echo $pesel

echo -e "\n" $imie ' ' $nazwisko ' ' $pesel "\n"
