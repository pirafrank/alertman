#!/bin/bash

##### VARIABLES #####

MEMORY=$(free -m | head -2 | tail -1 | awk '{print $3}')
DISKSPACE=$(df / | grep / | awk '{ print $5}' | sed 's/%//g')
COPYMOUNTPOINT="/home/francesco/copy-mnt"
COPYSTATUS=""
EMAIL="webmaster@fpira.com"

##### FUNCTIONS #####

function iscopymounted() {
	if [ "$(ls $COPYMOUNTPOINT)" ]; then
		COPYSTATUS="IS"
	else
		COPYSTATUS="IS NOT"
	fi
}

function sendemail() {
mail -s 'System Status' $EMAIL << EOF

$PYSCRIPT

Your Copy account $COPYSTATUS mounted.

EOF
}

##### SCRIPT BODY #####

PYSCRIPT=$(./server-status.py)
sleep 4
iscopymounted
sleep 4
sendemail
