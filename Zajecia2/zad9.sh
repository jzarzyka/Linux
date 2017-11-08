#!/bin/bash

echo "Plik: "
read plik

sed -i '/^M/d' $plik
