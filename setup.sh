#!/bin/sh
# Setup script for Mac/Linux
# Clones todolist-api and todolist-web into the current directory
#
# Usage:
#   ./setup.sh        (HTTPS)
#   ./setup.sh --ssh  (SSH)

set -e

if [ "$1" = "--ssh" ]; then
    API_URL="git@github.com:jucewicz/todolist-api.git"
    WEB_URL="git@github.com:jucewicz/todolist-web.git"
else
    API_URL="https://github.com/jucewicz/todolist-api.git"
    WEB_URL="https://github.com/jucewicz/todolist-web.git"
fi

echo "Setting up todolist-app..."

if [ ! -d "todolist-api" ]; then
    echo "Cloning todolist-api..."
    git clone "$API_URL" todolist-api
else
    echo "todolist-api already exists, skipping."
fi

if [ ! -d "todolist-web" ]; then
    echo "Cloning todolist-web..."
    git clone "$WEB_URL" todolist-web
else
    echo "todolist-web already exists, skipping."
fi

echo ""
echo "Done! Next steps:"
echo "  1. Copy .env.example to .env"
echo "  2. Fill in your GEMINI_API_KEY and SECRET_KEY in .env"
echo "  3. Run: docker-compose up --build"
