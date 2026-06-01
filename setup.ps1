# Setup script for Windows (PowerShell)
# Clones todolist-api and todolist-web into the current directory

$ErrorActionPreference = "Stop"

Write-Host "Setting up todolist-app..."

if (-Not (Test-Path "todolist-api")) {
    Write-Host "Cloning todolist-api..."
    git clone https://github.com/jucewicz/todolist-api.git todolist-api
} else {
    Write-Host "todolist-api already exists, skipping."
}

if (-Not (Test-Path "todolist-web")) {
    Write-Host "Cloning todolist-web..."
    git clone https://github.com/jucewicz/todolist-web.git todolist-web
} else {
    Write-Host "todolist-web already exists, skipping."
}

Write-Host ""
Write-Host "Done! Next steps:"
Write-Host "  1. Copy .env.example to .env"
Write-Host "  2. Fill in your GEMINI_API_KEY in .env"
Write-Host "  3. Run: docker-compose up --build"
