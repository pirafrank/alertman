# Alertman

Nimble script-based sys monitoring tool and notification system for Linux.

### Features

- It sends you an email if any limits of these system resources are exceeded:

    - memory

    - disk

    - CPU

- It tells you if a directory (`/home/francesco/copy-mnt` by default as dummy dir) is mounted or not.

### Installation

1 - Clone the repo on your server / Wget [this](https://github.com/pirafrank/alertman/archive/master.zip) and unzip it

2 - Set up all the stuff
    
- the limits you like in scripts

- your email in all the scripts replacing mine

- the mounted folder to watch in `server-status.sh` or comment code out if you don't want the feature

3 - `chmod +x` the scripts

4 - add `alertman.sh` to crontab with the desired interval

(e.g. `*/10 * * * * /home/francesco/sys-monitor/alertman.sh`).

### Warranty

None.

### Customisation

Max. 

Released under GNU GPL v3. Fork, code, enjoy and share. 

### License

The software in this repository are released under the GNU GPLv3 License by Francesco Pira (dev[at]fpira[dot]com, fpira.com). You can read the terms of the license [here](http://www.gnu.org/licenses/gpl-3.0.html).
