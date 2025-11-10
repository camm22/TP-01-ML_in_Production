FROM python:3.12-alpine

# Étape 2 : Définir le répertoire de travail dans le conteneur
WORKDIR /app

# Étape 3 : Copier uniquement les fichiers nécessaires pour installer les dépendances
COPY requirements.txt .

# Étape 4 : Installer les dépendances
RUN pip install --no-cache-dir -r requirements.txt

# Étape 5 : Copier le reste du code source dans le conteneur
COPY . .

# Étape 6 : Exposer le port sur lequel Flask tourne
EXPOSE 5000

# Étape 7 : Commande de lancement de l’application
CMD ["python", "app.py"]
