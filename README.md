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
| AI | Gemini 2.5 Flash with tool use + SSE streaming |
| Auth | JWT (access + refresh tokens) |

## Features

- Task management with categories, subtasks, and priorities
- Kanban, calendar, and list views
- Dashboard with KPIs and charts
- AI chat assistant that can create and manage tasks via natural language
- Real-time streaming chat responses

## Running locally with Docker

### Prerequisites

- [Docker](https://www.docker.com/get-started) installed
- A [Gemini API key](https://aistudio.google.com/)

### Setup

1. Clone this repo and run the setup script:

**Windows (PowerShell):**
```powershell
git clone https://github.com/jucewicz/todolist-app
cd todolist-app
.\setup.ps1
```

**Mac/Linux:**
```bash
git clone https://github.com/jucewicz/todolist-app
cd todolist-app
chmod +x setup.sh && ./setup.sh
```

2. Create your `.env` file and fill in your Gemini API key:

```bash
cp .env.example .env
# Open .env and set GEMINI_API_KEY=your-key-here
```

3. Start all services:

```bash
docker-compose up --build
```

4. Open [http://localhost](http://localhost) in your browser.

The API docs are available at [http://localhost:8000/docs](http://localhost:8000/docs).

### Stopping

```bash
docker-compose down
```

To also delete the database volume:

```bash
docker-compose down -v
```
