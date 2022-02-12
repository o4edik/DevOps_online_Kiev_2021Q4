pipeline {
    agent {
        docker { 
            image 'maven:latest' 
            args '-v $HOME/.m2:/root/.m2'
        }
    }
    stages {
        stage('Build') {
            steps {
                sh 'sudo usermod -a -G docker jenkins'
                sh 'git clone https://github.com/spring-projects/spring-petclinic.git'
                sh 'cd spring-petclinic'
                sh './mvnw package'
                sh 'java -jar target/*.jar'
            }
        }
    }
}