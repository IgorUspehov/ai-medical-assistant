from fastapi import FastAPI

app = FastAPI(
    title="AI Medical Assistant",
    version="0.1.0",
    description="On-premise GDPR-safe AI/RAG medical assistant scaffold"
)

@app.get("/health")
def health():
    return {
        "status": "ok",
        "service": "ai-medical-assistant"
    }

@app.get("/")
def root():
    return {
        "message": "AI Medical Assistant API",
        "mode": "on-premise",
        "privacy": "GDPR"
    }
