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


CURRENT=$(free -m | head -2 | tail -1 | awk '{print $3}')
THRESHOLD=500
EMAIL='webmaster@fpira.com'

if [ "$CURRENT" -gt "$THRESHOLD" ] ; then
    mail -s 'Free Memory Alert' $EMAIL << EOF
Warning: Memory usage is >50%!
Used: $CURRENT MB
EOF
fi
