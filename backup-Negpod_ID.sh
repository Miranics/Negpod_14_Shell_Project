#!/usr/bin/env bash

# Defining variables
NEG_POD_ID=14
DIR_NAME="negpod_${NEG_POD_ID}-q1"
BACKUP_FILE="${DIR_NAME}.tar.gz"
REMOTE_USER="ec1ebc754f75"
REMOTE_HOST="ec1ebc754f75.a5efec7a.alu-cod.online"
REMOTE_DIR="/summative/0524-2024m"
PASSWORD="ea1d8f222b11d7be18f6"

# Create a tarball of the directory
if [ -d "$DIR_NAME" ]; then
    tar -czf "$BACKUP_FILE" "$DIR_NAME"
    echo "Directory $DIR_NAME compressed into $BACKUP_FILE."
else
    echo "Directory $DIR_NAME does not exist. Cannot create backup."
    exit 1
fi

sshpass -p "$PASSWORD" scp "$BACKUP_FILE" "${REMOTE_USER}@${REMOTE_HOST}:${REMOTE_DIR}/"
if [ $? -eq 0 ]; then
    echo "Backup file $BACKUP_FILE successfully copied to $REMOTE_HOST:$REMOTE_DIR"
else
    echo "Failed to copy the backup file to the remote server."
fi
