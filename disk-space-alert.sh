#!/bin/bash
CURRENT=$(df / | grep / | awk '{ print $5}' | sed 's/%//g')
THRESHOLD=30
EMAIL='webmaster@fpira.com'

if [ "$CURRENT" -gt "$THRESHOLD" ] ; then
    mail -s 'Disk Space Alert' $EMAIL << EOF
Warning: Your root partition remaining free space is < 70%.
Used: $CURRENT%
EOF
fi
