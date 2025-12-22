#!/bin/bash

BASE_DIR="$HOME/satisfactory"
SAVE_DIR="$BASE_DIR/data/saved/SaveGames/server"
BACKUP_DIR="$BASE_DIR/backups"
DATE=$(date +"%Y-%m-%d_%H-%M-%S")

mkdir -p "$BACKUP_DIR"

tar -czf "$BACKUP_DIR/satisfactory_backup_$DATE.tar.gz" -C "$SAVE_DIR" .

echo "Backup completed: $BACKUP_DIR/satisfactory_backup_$DATE.tar.gz"
