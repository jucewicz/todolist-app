# Setup script for Windows (PowerShell)
# Clones todolist-api and todolist-web into the current directory
#
# Usage:
#   .\setup.ps1        (HTTPS)
#   .\setup.ps1 -SSH   (SSH)

param (
    [switch]$SSH
)

$ErrorActionPreference = "Stop"

if ($SSH) {
    $ApiUrl = "git@github.com:jucewicz/todolist-api.git"
    $WebUrl = "git@github.com:jucewicz/todolist-web.git"
} else {
    $ApiUrl = "https://github.com/jucewicz/todolist-api.git"
    $WebUrl = "https://github.com/jucewicz/todolist-web.git"
}

Write-Host "Setting up todolist-app..."

if (-Not (Test-Path "todolist-api")) {
    Write-Host "Cloning todolist-api..."
    git clone $ApiUrl todolist-api
} else {
    Write-Host "todolist-api already exists, skipping."
}

if (-Not (Test-Path "todolist-web")) {
    Write-Host "Cloning todolist-web..."
    git clone $WebUrl todolist-web
} else {
    Write-Host "todolist-web already exists, skipping."
}

Write-Host ""
Write-Host "Done! Next steps:"
Write-Host "  1. Copy .env.example to .env"
Write-Host "  2. Fill in your GEMINI_API_KEY and SECRET_KEY in .env"
Write-Host "  3. Run: docker-compose up --build"
