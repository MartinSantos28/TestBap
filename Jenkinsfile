pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                
                git 'https://github.com/MartinSantos28/TestBap.git'
            }
        }
        
        stage('Build') {
            steps {
                script {
                    
                    sh 'docker-compose build'
                }
            }
        }

        stage('Test') {
            steps {
                script {
                    
                    docker.image("test-landing").inside {
                        sh 'docker-compose up -d    '
                    }
                }
            }
        }

        stage('Deploy') {
            steps {
                script {
                    
                    sh 'docker run -d -p 5000:5000 test-landing'
                }
            }
        }
    }
}
