#!/bin/sh
# export $(grep -v '^#' .env | xargs -d '\n')
sed -i "/^\[database\]$/,/^\[/ s/^HOST.*/HOST = ${DB_HOST}/" /data/gitea/conf/app.ini
sed -i "/^\[database\]$/,/^\[/ s/^NAME.*/NAME = ${DB_NAME}/" /data/gitea/conf/app.ini
sed -i "/^\[database\]$/,/^\[/ s/^USER.*/USER = ${DB_USER}/" /data/gitea/conf/app.ini
sed -i "/^\[database\]$/,/^\[/ s/^PASSWD.*/PASSWD = ${DB_PASSWD}/" /data/gitea/conf/app.ini
sed -i "/^\[webhook\]$/,/^\[/ s/^ALLOWED_HOST_LIST.*/ALLOWED_HOST_LIST = ${ALLOWED_HOST_LIST}/" /data/gitea/conf/app.ini
# sed -i "/^\[server\]$/,/^\[/ s/^CERT_FILE.*/CERT_FILE = ${CERT_FILE}/" /data/gitea/conf/app.ini
# sed -i "/^\[server\]$/,/^\[/ s/^KEY_FILE.*/KEY_FILE = ${KEY_FILE}/" /data/gitea/conf/app.ini
sed -i "/^\[server\]$/,/^\[/ s/^DOMAIN.*/DOMAIN = ${DOMAIN}/" /data/gitea/conf/app.ini
sed -i "/^\[server\]$/,/^\[/ s/^SSH_DOMAIN.*/SSH_DOMAIN = ${SSH_DOMAIN}/" /data/gitea/conf/app.ini
# sed -i "/^\[server\]$/,/^\[/ s/^ROOT_URL.*/ROOT_URL = ${GITEA_ROOT_URL}/" /data/gitea/conf/app.ini
