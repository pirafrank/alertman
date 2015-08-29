#!/usr/local/bin/python2.7

from psutil import *

mem = virtual_memory()
root = disk_usage('/')
cpu = cpu_percent(None,False)

print "Currently used resources:"
print "CPU\t\t:",cpu,'%'
print "Memory\t\t:",mem.used/1024/1024,"MB out of",mem.available/1024/1024,"MB"
print "Disk space\t:",root.used/1024/1024,"MB"
