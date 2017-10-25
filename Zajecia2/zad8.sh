#!/bin/bash

tablica=(napis1 napis2 napis3)

echo ${tablica[0]}
echo ${tablica[*]}

for index in ${!tablica[@]}; do
echo ${index}
done

unset tablica[1]
echo ${tablica[*]}
tablica[6]=napis6
echo ${tablica[*]}
for index in ${!tablica[@]}; do
echo ${index}
done


