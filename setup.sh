#!/bin/sh
# Setup script for Mac/Linux
# Clones todolist-api and todolist-web into the current directory

set -e

echo "Setting up todolist-app..."

if [ ! -d "todolist-api" ]; then
    echo "Cloning todolist-api..."
    git clone https://github.com/jucewicz/todolist-api.git todolist-api
else
    echo "todolist-api already exists, skipping."
fi

if [ ! -d "todolist-web" ]; then
    echo "Cloning todolist-web..."
    git clone https://github.com/jucewicz/todolist-web.git todolist-web
else
    echo "todolist-web already exists, skipping."
fi

echo ""
echo "Done! Next steps:"
echo "  1. Copy .env.example to .env"
echo "  2. Fill in your GEMINI_API_KEY in .env"
echo "  3. Run: docker-compose up --build"
