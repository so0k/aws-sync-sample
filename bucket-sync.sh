#!/bin/bash

echo "`date` - Syncing bucket" >> /dev/stdout
exec aws s3 sync s3://${S3_BUCKET} ${NFS_BACKUP}
