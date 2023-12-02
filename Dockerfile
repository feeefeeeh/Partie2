# Utilisation d'une image de base
FROM openjdk:11

# Définition du répertoire de travail
WORKDIR /app

# Copie des fichiers nécessaires dans le conteneur
COPY target/my-project-1.0-SNAPSHOT.jar /app/app.jar

# Commande à exécuter lorsque le conteneur démarre
CMD ["java", "-jar", "app.jar"]
