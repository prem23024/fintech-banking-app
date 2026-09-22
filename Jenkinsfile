pipeline {
    agent any

    stages {
        stage('Checkout Code') {
            steps {
                checkout scm
            }
        }

        stage('Build Docker Images') {
            steps {
                // Automates the image builds you just did manually
                sh 'docker build -t fintech-fullstack-deploy-frontend:latest ./fintech-frontend'
                sh 'docker build -t fintech-fullstack-deploy-backend:latest ./fintech-backend'
            }
        }

        stage('Deploy to Kubernetes') {
            steps {
                // Applies any infrastructure changes and restarts the pods to load the new code
                sh 'kubectl apply -f kubernetes/'
                sh 'kubectl rollout restart deployment fintech-frontend'
                sh 'kubectl rollout restart deployment fintech-backend'
            }
        }
    }
}