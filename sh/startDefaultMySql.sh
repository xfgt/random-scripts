#!/bin/sh

sudo systemctl start mysql.service
/etc/init.d/mysql start
sudo systemctl status mysql.service
