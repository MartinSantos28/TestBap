pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                checkout([$class: 'GitSCM', branches: [[name: '*/main']], doGenerateSubmoduleConfigurations: false, extensions: [], submoduleCfg: [], userRemoteConfigs: [[url: 'https://github.com/MartinSantos28/TestBap.git']]])
            }
        }
        
        stage('Build') {
            steps {
                script {
                    docker.build("test-landing", ".")
                }
            }
        }

        stage('Test') {
            steps {
                script {
                    docker.image("test-landing").inside {
                        sh 'docker-compose up -d'
                    }
                }
            }
        }

        stage('Deploy') {
            steps {
                script {
                    docker.image("test-landing").run("-p 5000:5000")
                }
            }
        }
    }
}
