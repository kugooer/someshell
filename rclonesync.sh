#!/usr/bin/env bash
#
# Description: Test your server's network with Speedtest to China
#
# Copyright (C) 2017 - 2017 Oldking <oooldking@gmail.com>
#
# URL: https://www.oldking.net/305.html
#

# Colors
/usr/bin/rclone copy gphoto:media/by-month onedrive:/备份/GooglePhotos/media/by-month > /dev/null 2>&1 &
/usr/bin/rclone copy gphoto:album onedrive:/备份/GooglePhotos/album > /dev/null 2>&1 &
/usr/bin/rclone copy gphoto:shared-album onedrive:/备份/GooglePhotos/shared-album > /dev/null 2>&1 &
/usr/bin/rclone --exclude-from /root/.config/rclone/exclude-file.txt --config /root/.config/rclone/rclone.conf sync onedrive:/ box:/Backup/OneDrive
/usr/bin/rclone --config /root/.config/rclone/rclone.conf sync dropbox:/ box:/Backup/DropBox
/usr/bin/rclone --config /root/.config/rclone/rclone.conf sync jianguo:./我的坚果云 box:/Backup/JianGuoDrive
/usr/bin/rclone --config /root/.config/rclone/rclone.conf sync mega:/ box:/Backup/Mega
#/usr/bin/rclone --box-upload-cutoff 50M --exclude-from /root/.config/rclone/exclude-file.txt --config /root/.config/rclone/rclone.conf sync gdrive:/ box:/Backup
/usr/bin/rclone --box-upload-cutoff 50M --config /root/.config/rclone/rclone.conf sync /media/nfs1/download/Sync/Data box:/Sync
