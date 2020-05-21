#!/bin/bash

command for step1 - create an executable script called system.sh:
	- sudo mkdir -p ~/home/backups/freemem
	- sudo mkdir -p ~/home/backups/openlist
	- sudo mkdir -p ~/home/backups/freedisk

free -h > ~/home/backups/freemem/free_mem.txt

du - h > ~/home/backups/diskuse/disk_usage.txt

lsof > ~/home/backups/openlist/openlist.txt

df -h > ~/home/backups/freedisk/freedisk.txt
