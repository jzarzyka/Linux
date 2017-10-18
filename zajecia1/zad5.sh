#!/bin/sh

awk '(length>m){m=length;a=$0;b=NR} END {print a; print m; print b;}'
