#!/bin/sh

USER="MYSQL_USER_NAME"
PASS="MYSQL_USER_PASSWORD"
FILE="BACKUP_FILE_NAME"
DATE="DATE_FORMAT" # %Y-%m-%d-%H-%M-%S

mysqldump -u $USER -p$PASS --all-databases --single-transaction | bzip2 > `date +$FILE-$DATE.sql.bz2`