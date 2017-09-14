#!/bin/bash
#START
#Code Backup
TIME=$(date +'%Y-%m-%d')
FILENAME=spenCode-$TIME.tar.gz
SRCDIR="/var/www/html/Spencer_uat2"
DESDIR="/home/backups/files"
tar cpzfP $DESDIR/$FILENAME $SRCDIR --exclude "/var/www/html/Spencers_local/media/"  --exclude "/var/www/html/Spencers_local/var/"
#To backup only the media directory change
#tar -zcf backup-YYYY-MM-DD-HH-MM.tar.gz public_html/media/
#END
