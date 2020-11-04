#!/bin/bash

if [ $# -gt 0 ]; then
    echo "Stopping services"
    docker-compose down
    echo "Stopping services done..."
    exit 1
fi

echo "Stopping services"
docker-compose down
echo "Stopping services done..."
echo "Restart services..."
docker-compose up -d --build
echo "Please wait while service is up..."
cp .env ../src/.env
echo "Install project dependencies..."
docker-compose exec app yarn install
echo "Done..."
echo "All done"