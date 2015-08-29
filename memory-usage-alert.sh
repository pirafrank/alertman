#!/bin/bash
CURRENT=$(free -m | head -2 | tail -1 | awk '{print $3}')
THRESHOLD=500
EMAIL='webmaster@fpira.com'

if [ "$CURRENT" -gt "$THRESHOLD" ] ; then
    mail -s 'Free Memory Alert' $EMAIL << EOF
Warning: Memory usage is >50%!
Used: $CURRENT MB
EOF
fi
