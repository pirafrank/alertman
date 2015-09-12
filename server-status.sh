#!/bin/bash

# Copyright (C) 2015  Francesco Pira <me[at]fpira[dot]com

# This file is part of Alertman

# Alertman is free software: you can redistribute it and/or modify it
# under the terms of the GNU General Public License as published by the Free
# Software Foundation, either version 3 of the License, or (at your option)
# any later version.

# Alertman is distributed in the hope that it will be useful, but WITHOUT
# ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
# FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
# more details.

# You should have received a copy of the GNU General Public License along
# with Alertman.  If not, see <http://www.gnu.org/licenses/>.


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
