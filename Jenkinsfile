pipeline {
    agent { docker { image 'maven:3.8.4-openjdk-11-slim' } }
    stages {
        stage('check version') {
            steps {
                sh 'mvn --version'
            }
        }
        stage('build') {
            steps {
                sh './mvnw spring-boot:run'
            }
        }
    } 
}