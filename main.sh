#!/bin/bash

tar -czvf /usr/share/sflbd/logs.tar.gz /var/log/apache2
rclone --config=/usr/share/sflbd/rclone.conf copy /usr/share/sflbd/logs.tar.gz gdrive:/

rm /usr/share/sflbd/logs.tar.gz
