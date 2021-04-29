FROM alpine:3.13

EXPOSE 445/tcp

VOLUME ["/mnt/public", "/etc/samba"]

RUN apk update && apk upgrade && \
    apk add --no-cache samba && \
    mkdir -p /mnt/public && \
    chmod 0777 /mnt/public && \
    chown -R nobody:nogroup /mnt/public

COPY smb.conf /etc/samba/smb.conf

CMD ["smbd", "-FS", "--no-process-group"]