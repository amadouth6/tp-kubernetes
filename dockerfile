# Utilisation de l'image Python officielle en tant qu'image de base
FROM python:3.9-slim

# Création d'un répertoire de travail
WORKDIR /app

# Copie du code source dans le conteneur
COPY motd_api.py .

# Installation des dépendances
RUN pip install Flask

# Exposition du port défini par la variable d'environnement
ENV APP_PORT=5000

# Commande pour exécuter l'application
CMD ["python", "motd_api.py"]
