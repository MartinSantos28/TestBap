pipeline {
    agent any

    stages {


        stage('Build Docker Image') {
            steps {
                script {
                    dockerImage = docker.build('https://github.com/MartinSantos28/TestBap.git/imagen-nodo:latest', '-f Dockerfile .')
                }
            }
        }

        stage('Run Tests') {
            steps {
                script {
                    dockerImage.inside {
                        sh 'npm install'
                        sh 'npm test'
                    }
                }
            }
        }

        stage('Deploy') {
            steps {
                script {
                    dockerImage.inside {
                        sh 'npm run build'
                    }
                }
            }
        }
    }

}

