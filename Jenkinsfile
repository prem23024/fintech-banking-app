pipeline {
    agent any

    stages {
        stage('Checkout Code') {
            steps {
                // This tells Jenkins to pull the latest code from your GitHub repository
                checkout scm
            }
        }

        stage('Clean Old Containers') {
            steps {
                // Shuts down the old version of the app to free up the ports
                sh 'docker compose down'
            }
        }

        stage('Build & Deploy Full Stack') {
            steps {
                // The exact command you just ran manually!
                sh 'docker compose up -d --build'
            }
        }
    }
}