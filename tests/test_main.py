from fastapi.testclient import TestClient
from app.main import app  # Assure-toi que ce chemin est correct

client = TestClient(app)

def test_read_root():
    response = client.get("/")
    assert response.status_code == 200
    assert response.json() == {"message": "Welcome to the FastAPI CI/CD Demo"}

