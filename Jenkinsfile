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
                sh ''' 
                sudo usermod -a -G docker jenkins
                git clone https://github.com/spring-projects/spring-petclinic.git
                cd spring-petclinic
                ./mvnw package
                java -jar target/*.jar
                sh '''
            }
        }
    }
}