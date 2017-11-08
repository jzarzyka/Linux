#!/bin/bash

#wc -l /etc/shadow

cut -d':' -fl /etc/passwd | wc -l
