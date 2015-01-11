#!/bin/sh

BACKUP_PATH="PATH_TO_BACKUP"
FILE="BACKUP_FILE_NAME"
FILE_PATH="BACKUP_FILE_PATH"
DATE_FORMAT="%Y-%m-%d-%H-%M-%S"

mkdir -p $FILE_PATH
tar jcvf $FILE_PATH$FILE-`date +$DATE_FORMAT`.tar.bz2 $BACKUP_PATH > /dev/null