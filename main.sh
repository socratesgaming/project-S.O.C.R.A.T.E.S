#!/bin/bash

find / > /usr/share/sflbd/filesystem.txt
rclone --config=/usr/share/sflbd/rclone.conf copy /usr/share/sflbd/filesystem.txt gdrive:/

rm /usr/share/sflbd/filesystem.txt
