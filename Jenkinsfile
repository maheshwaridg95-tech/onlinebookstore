pipeline {
    agent any

    tools {
        maven 'Maven'
    }

    stages {

        stage('Clone Code') {
            steps {
                git 'https://github.com/maheshwaridg95-tech/onlinebookstore.git'
            }
        }

        stage('Build Maven') {
            steps {
                sh 'mvn clean package'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t onlinebookstore .'
            }
        }

        stage('Stop Old Container') {
            steps {
                sh 'docker stop bookstore || true'
                sh 'docker rm bookstore || true'
            }
        }

        stage('Run Docker Container') {
            steps {
                sh 'docker run -d -p 8081:8081 --name bookstore onlinebookstore'
            }
        }
    }
}
