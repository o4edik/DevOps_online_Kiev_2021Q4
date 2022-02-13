pipeline {
    agent {
        docker { image 'maven:latest' }
    }

    stages {
        stage('Git checkout') {
            steps {
                sh 'docker --version'

            }

        }

        stage('Delete workspace defore build starts') {
            steps {

            }
        }
        stage('Test') {
            steps {

            }

        }
        stage('Build docker image') {
            steps {

            }
        }

        stage('push dockerimage to dockerhub') {
            steps {

            }
        }
        stage('Create AWS instance using terraform') {
            steps {

            }
        }
        stage('Run container on AWS using Ansuble') {
            steps {

            }
        }
    }    
    }
}