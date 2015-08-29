#!/bin/bash

/home/francesco/sys-monitor/memory-usage-alert.sh
/home/francesco/sys-monitor/cpu-usage-alert.sh
/home/francesco/sys-monitor/disk-space-alert.sh

echo "ok" >> /home/francesco/sys-monitor/alertman.log
