pipeline {
    agent any

    stages {
        stage('checkout') {
            steps {
                git credentialsId: 'Github-Credentials', url: 'https://github.com/feeefeeeh/Partie2'
            }
        }
        stage('Build the application') {
            steps {
                sh 'mvn clean install'
            }
        }
        stage('Unit Test Execution') {
            steps {
                sh 'mvn test'
            }
        }
        stage('Build the docker Image'){
            steps {
                sh 'docker build -t feeefeee/jenkins:latest .'
            }
        }
        
        stage('Push the docker image') {
            steps {
                withCredentials([string(credentialsId:'Docker', variable:'dockerHubPass')]){
                    sh 'docker login -u feeefeee -p \${dockerHubPass}'
                    }
                sh 'docker push feeefeee/jenkins:latest'
            }
        }
    }
    post{
        failure{
            emailext body : 'Ce Build $BUILD_NUMBER a échoué',
                recepientProviders:[requestor()],subject:'build', to:
                'felixhumeau@yahoo.com'
        }
    }   
}
