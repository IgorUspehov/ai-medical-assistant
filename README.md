# AI Medical Assistant

On-premise AI/RAG architecture prototype for GDPR-safe medical document analysis.

## Features

- PDF processing
- OCR pipeline
- Audio transcription
- RAG search
- Local LLM
- GDPR compliant
- On-premise deployment

## Stack

- FastAPI
- PostgreSQL
- Qdrant
- MinIO
- Docker Compose
- Kubernetes
- vLLM

## Status

Architecture prototype and deployment scaffold.

## Local Run Test

The project was successfully launched with Docker Compose.

### Start

docker compose -f deploy/docker-compose.yml up -d

### Health Check

curl http://localhost:8000/health

### Expected Response

{"status":"ok","service":"ai-medical-assistant"}

### Components

- FastAPI
- PostgreSQL
- Qdrant
- Docker Compose

