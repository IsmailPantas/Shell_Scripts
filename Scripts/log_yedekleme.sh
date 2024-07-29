#!/bin/bash

DEST_DIR="/home/ubuntu/log_backups"

TIMESTAMP=$(date +"%Y%m%d-%H%M%S")

BACKUP_FILE="$DEST_DIR/log_backup_$TIMESTAMP.tar.gz"

TEMP_DIR="/tmp/log_backup_$TIMESTAMP"
mkdir -p "$TEMP_DIR"
cp -r /var/log/* "$TEMP_DIR"

tar -czf "$BACKUP_FILE" -C "$TEMP_DIR" .

rm -rf "$TEMP_DIR"

echo "Yedekleme tamamlandı: $BACKUP_FILE"

