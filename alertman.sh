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


/home/francesco/sys-monitor/memory-usage-alert.sh
/home/francesco/sys-monitor/cpu-usage-alert.sh
/home/francesco/sys-monitor/disk-space-alert.sh

echo "ok" >> /home/francesco/sys-monitor/alertman.log
