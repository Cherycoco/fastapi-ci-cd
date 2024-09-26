# Utiliser l'image Python comme base
FROM python:3.9-slim

# Définir le répertoire de travail
WORKDIR /app

# Copier les fichiers requirements.txt et installer les dépendances
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

# Copier le reste de l'application
COPY ./app ./app
COPY ./tests ./tests

# Exposer le port utilisé par FastAPI
EXPOSE 8001

# Commande pour démarrer l'application FastAPI
CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8001"]
