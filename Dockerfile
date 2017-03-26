FROM quay.io/honestbee/awscli:1.11.55

COPY bucket-sync.sh /bin/bucket-sync.sh
COPY root /var/spool/cron/crontabs/root

RUN chmod +x /bin/bucket-sync.sh
ENTRYPOINT ["/usr/sbin/crond","-l","2","-f"]
STOPSIGNAL SIGKILL

