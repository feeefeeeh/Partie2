pipeline {
    agent any

    stages {
        stage('Lister les variables') {
            steps {
                script {
                    // Définir les variables d'environnement
                    env.USER_NAME = 'JohnDoe'
                    env.FAVORITE_COLOR = 'Blue'

                    // Afficher les variables
                    echo "Nom de l'utilisateur : ${env.USER_NAME}"
                    echo "Couleur préférée : ${env.FAVORITE_COLOR}"
                }
            }
        }

        stage('Utilisation des variables') {
            steps {
                script {
                    // Créer une nouvelle variable d'environnement pour le loisir
                    env.HOBBY = 'Lecture'

                    // Redéfinir la couleur préférée
                    env.FAVORITE_COLOR = 'Green'

                    // Afficher toutes les variables
                    echo "Nom de l'utilisateur : ${env.USER_NAME}"
                    echo "Couleur préférée (mise à jour) : ${env.FAVORITE_COLOR}"
                    echo "Loisir : ${env.HOBBY}"
                }
            }
        }
    }
}
