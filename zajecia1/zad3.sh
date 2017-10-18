#!/bin/sh

x = "haslo"
echo 'Podaj haslo'
read haslo

if [ $haslo != $x]; then
 	read haslo
 	if [ $haslo != $x]; then
 		exit 0
 	else 
 		ls -al
 	fi
else 
 	ls -al
fi

