# Utiliser une image Python comme base
FROM python:3.13.2-slim

# Définir un répertoire de travail pour l'application
WORKDIR /app

# Copier tous les fichiers du répertoire local vers le répertoire de travail du container
COPY . /app

# Installer les dépendances à partir du fichier requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Exposer le port 8080 pour l'application Flask
EXPOSE 8080

# Démarrer l'application Flask
CMD ["python", "src/app.py"]
