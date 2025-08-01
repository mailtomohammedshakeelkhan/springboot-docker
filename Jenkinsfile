pipeline {
    agent any
    tools {
        maven 'maven_3_8_4'
    }
    stages {
        stage('Build Maven Project') {
            steps {
                checkout scmGit(branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/mailtomohammedshakeelkhan/springboot-docker']])
                sh 'mvn clean install'
            }
        }
        stage('Build the docker images'){
            steps {
                script{
                    sh 'docker build -t mailtomohammedshakeelkhan/springboot-docker-example .'
                }
            }
        }

        stage('Push the image on the docker hub'){
            steps {
                script{
                withCredentials([string(credentialsId: 'dockerhubpwd', variable: 'dockerhubpwd')]) {
                    sh 'docker login -u mailtomohammedshakeelkhan -p ${dockerhubpwd}'
                    }
                    sh 'docker push mailtomohammedshakeelkhan/springboot-docker-example'
                }
            }
        }
}
}
