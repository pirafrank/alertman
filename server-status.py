#!/usr/local/bin/python2.7

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


from psutil import *

mem = virtual_memory()
root = disk_usage('/')
cpu = cpu_percent(None,False)

print "Currently used resources:"
print "CPU\t\t:",cpu,'%'
print "Memory\t\t:",mem.used/1024/1024,"MB out of",mem.available/1024/1024,"MB"
print "Disk space\t:",root.used/1024/1024,"MB"
