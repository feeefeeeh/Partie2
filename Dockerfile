# Utilisez une image de base appropriée pour votre application
FROM openjdk:11-jre-slim

# Copiez le fichier JAR de votre application dans l'image
COPY target/my-project-1.0-SNAPSHOT.jar /app/my-project.jar

# Définissez le répertoire de travail
WORKDIR /app

# Commande pour exécuter l'application
CMD ["java", "-jar", "my-project.jar"]
