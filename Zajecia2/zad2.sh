#!/usr/bin/env/bash

awk -F ':' '$3<8' /etc/passwd
