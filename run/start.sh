#!/usr/bin/env bash
set -e

PROJECT_ROOT="$(cd "$(dirname "$0")/.." && pwd)"
cd "$PROJECT_ROOT"

echo "[1/3] Starting AI Medical Assistant..."
docker compose -f deploy/docker-compose.yml up -d

echo "[2/3] Waiting for API..."
sleep 5

echo "[3/3] Checking health..."
curl -fsS http://localhost:8000/health || true

echo ""
echo "DONE"
echo "API: http://localhost:8000"
echo "Health: http://localhost:8000/health"
