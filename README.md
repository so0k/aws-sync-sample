# S3 Sync Container

Script to sync s3 buckets to host mounts

Uses cron tabs to sync an s3 bucket on a schedule.

Sample `.env` file:
```
AWS_ACCESS_KEY_ID=AKIA...
AWS_SECRET_ACCESS_KEY=plT...
S3_BUCKET=MyBucket
NFS_BACKUP=/mnt/backups
DEADMAN_SNITCH=https://hchk.io/<uid>
```

Run container:
```bash
docker run \
    -v /mnt/nfs/backups/:/mnt/backups \
    --env-file .env \
    so0k/aws-sync-sample:latest
```