#!/usr/bin/env bash

awk 'BEGIN { for (i = 1; i <= 6; i++)
print int(101 * rand()) }' 
