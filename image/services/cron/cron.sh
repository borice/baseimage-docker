#!/bin/bash
set -e
source /bd_build/buildconfig
set -x

$minimal_apt_get_install cron anacron
mkdir /etc/service/cron
chmod 600 /etc/crontab
cp /bd_build/services/cron/cron.runit /etc/service/cron/run

## Remove useless cron entries.
# Checks for lost+found and scans for mtab.
rm -f /etc/cron.daily/apt
rm -f /etc/cron.daily/password
