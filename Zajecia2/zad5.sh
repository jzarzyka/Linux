#!/bin/bash

read plik
if [-f $plik ]; then
	echo "Plik istnieje"
else
	echo "Plik nie istnieje"
fi
