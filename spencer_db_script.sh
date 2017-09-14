#!/bin/bash
#START
#DB Backup
#DBUSER=root
#DBHOST=10.22.1.168
#DBPASS=H@ppiest@123
#DBNAME=spencer_uat
#TIME=$(date +'%Y-%m-%d-%r')
#FILENAME=spenDB_$TIME.sql
#mysqldump -u $DBUSER -h $DBHOST -p $DBNAME > /home/backups/files/$FILENAME
#gzip $FILENAME
db_name=spencer_uat
host=10.22.1.168
username=root
DATE=`date +"%Y-%m-%d"`
SQLFILE=spenDb-${DATE}
Backup_path=/home/backups/files/$SQLFILE
#mysqldump --opt -Q -u$username -p $DBNAME -h$host | gzip > backup-$SQLFILE.sql.gz
mysqldump -u root -p spencer_uat --routines | gzip > $Backup_path.sql.gz
#tar cpzfP $Backup_path/$SQLFILE.tar.gz
#END