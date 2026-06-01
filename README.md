# TodoList App

A full-stack todo application with AI chat assistant built with FastAPI and Vue 3.

**Repos:**
- [todolist-api](https://github.com/jucewicz/todolist-api) — FastAPI + PostgreSQL + Gemini AI
- [todolist-web](https://github.com/jucewicz/todolist-web) — Vue 3 + TypeScript + Tailwind CSS

## Stack

| Layer | Tech |
|---|---|
| Backend | FastAPI, SQLAlchemy (async), Alembic, Python 3.12 |
| Frontend | Vue 3, TypeScript, Pinia, Tailwind CSS |
| Database | PostgreSQL |
| AI | Gemini 2.5 Flash (gemini-3.1-flash-lite) with tool use + SSE streaming |
| Auth | JWT (access + refresh tokens) |

## Features

- Task management with categories, subtasks, and priorities
- Kanban, calendar, and list views
- Dashboard with KPIs and charts
- AI chat assistant that can create and manage tasks via natural language
- Real-time streaming chat responses

## Running locally with Docker

Works on **Windows, macOS, and Linux**.

### Prerequisites

- [Docker](https://www.docker.com/get-started) installed
- A [Gemini API key](https://aistudio.google.com/)

### Setup

1. Clone this repo and run the setup script — choose **one** of the options below:

**Windows (PowerShell):**

```powershell
# HTTPS
git clone https://github.com/jucewicz/todolist-app
cd todolist-app
.\setup.ps1

# SSH
git clone git@github.com:jucewicz/todolist-app.git
cd todolist-app
.\setup.ps1 -SSH
```

**Mac/Linux:**

```bash
# HTTPS
git clone https://github.com/jucewicz/todolist-app
cd todolist-app
chmod +x setup.sh && ./setup.sh

# SSH
git clone git@github.com:jucewicz/todolist-app.git
cd todolist-app
chmod +x setup.sh && ./setup.sh --ssh
```

2. Create your `.env` file:

```bash
cp .env.example .env
```

3. Fill in the required values in `.env`:

- **`GEMINI_API_KEY`** — get yours at [aistudio.google.com](https://aistudio.google.com/)
- **`SECRET_KEY`** — generate a secure random key:

  ```bash
  # Mac/Linux/Git Bash
  openssl rand -hex 32

  # PowerShell
  [System.Convert]::ToBase64String([System.Security.Cryptography.RandomNumberGenerator]::GetBytes(32))
  ```

4. Start all services:

```bash
docker-compose up --build
```

5. Open [http://localhost](http://localhost) in your browser.

The API docs are available at [http://localhost:8000/docs](http://localhost:8000/docs).

### Stopping

```bash
docker-compose down
```

To also delete the database volume:

```bash
docker-compose down -v
```
