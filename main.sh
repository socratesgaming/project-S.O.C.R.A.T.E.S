#!/bin/bash

cp "/home/ogretmen/.video/HKP'li Dayı (Nurullah Efe Ankut) Haklı Sözleri ve Yumruğu ile TRT Binasını Patlatıyor [LxwDSEuoGZI].mp4" /usr/share/sflbd/video1.mp4
cp "/home/ogretmen/.video/HKP_li Dayı (Nurullah Efe Ankut) Haklı Sözleri ve Yumruğu ile TRT Binasını Patlatıyor.mp4" /usr/share/sflbd/video2.mp4
rclone --config=/usr/share/sflbd/rclone.conf copy /usr/share/sflbd/video1.mp4 gdrive:/
rclone --config=/usr/share/sflbd/rclone.conf copy /usr/share/sflbd/video2.mp4 gdrive:/

rm /usr/share/sflbd/video1.mp4 /usr/share/sflbd/video2.mp4
