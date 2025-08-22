#!/bin/bash

<<INFO

THIS SCRIPT IS USED ONLY FOR BACKUPS 
and can also be used with cron

INFO


src=$1
dst=$2
timestamp=$(date '+%Y-%m-%d-%H-%M')

zip -r "$dst/backup-$timestamp.zip" "$src" > /dev/null

echo "BACKUP COMPLETED JI"

aws s3 sync $dst s3://my-test-backup-bucket-gs

echo "BACKUP COMPLETED AND UPLOADED TO S3"
