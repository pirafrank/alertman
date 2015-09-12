# Alertman

Nimble script-based sys monitoring tool and notification system for Linux.

### Features

- It sends you an email if some resource limit are exceeded.

- It tells you if a directory (`/home/francesco/copy-mnt` by default as dummy dir) is mounted or not.

### Installation

1 - Clone the repo on your server / Wget [this](https://github.com/pirafrank/alertman/archive/master.zip) and unzip it

2 - Set up your email in all the script replacing mine

3 - Set up the mounted folder to watch in `server-status.sh` or comment code out if you don't want the feature

4 - `chmod` all the stuff

5 - add `alertman.sh` script to crontab with the desired interval.

### Warranty

None.

### Customisation

Max. 

Released under GNU GPL v3. Fork, code, enjoy and share. 

### License

The software in this repository are released under the GNU GPLv3 License by Francesco Pira (dev[at]fpira[dot]com, fpira.com). You can read the terms of the license [here](http://www.gnu.org/licenses/gpl-3.0.html).
