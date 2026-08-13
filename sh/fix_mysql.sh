#!/bin/sh

sudo systemctl stop mysql.service
/etc/init.d/mysql stop
sudo systemctl status mysql.service
