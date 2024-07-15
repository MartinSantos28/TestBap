pipeline {
    agent any
    environment {
        compose_service_name = "react-jenkins-docker"
        workspace = "https://github.com/MartinSantos28/TestBap.git"  // Ruta al directorio de trabajo en tu instancia EC2
        docker_home = "/usr/bin/docker"  // Ruta al ejecutable de Docker
        docker_compose_home = "/usr/local/bin/docker-compose"  // Ruta al ejecutable de Docker Compose
    }
    stages {
        stage('Checkout Source') {
            steps {
                dir("${workspace}") {
                    git branch: 'main', credentialsId: 'your-credentials-id', url: 'https://github.com/MartinSantos28/TestBap.git'
                }
            }
        }
        stage('Docker Compose Build') {
            steps {
                dir("${workspace}") {
                    sh "${docker_compose_home} build --no-cache ${compose_service_name}"
                }
            }
        }
        stage('Docker Compose Up') {
            steps {
                dir("${workspace}") {
                    sh "${docker_compose_home} up --no-deps -d ${compose_service_name}"
                }
            }
        }
    }
}
