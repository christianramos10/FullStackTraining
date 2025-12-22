#!/bin/bash

cd ~/satisfactory

echo "Stopping server..."
docker compose down

echo "Backing up saves..."
./scripts/backup.sh

echo "Starting server..."
docker compose up -d
