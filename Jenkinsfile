pipeline {
    agent { any}
        // docker { 
        //     image 'maven:latest' 
        //     args '-v $HOME/.m2:/root/.m2'
        //     args '-p8888:8080'
        // }
    }
    stages {
        stage('Checkout') {
            steps {
                git branch: 'main',
                    url: 'https://github.com/o4edik/petclinic.git'
            }
        }
        stage('Build') {
            steps {
                sh ''' 
                sudo usermod -aG docker jenkins
                cd petclinic
                ./mvnw package
                java -jar target/*.jar
                sh '''
            }
        }
    }
