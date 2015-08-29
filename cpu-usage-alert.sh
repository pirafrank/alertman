#!/bin/bash
CURRENT=$(top -bn 1 | head -3 | tail -1 | awk '{print $2}' | sed 's/.\{6\}$//')
THRESHOLD=50
EMAIL='webmaster@fpira.com'

if [ "$CURRENT" -gt "$THRESHOLD" ] ; then
    mail -s 'CPU Usage Alert' $EMAIL << EOF
Warning: CPU usage is >50%!
Used: $CURRENT%
EOF
fi
