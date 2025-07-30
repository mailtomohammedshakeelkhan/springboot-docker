pipeline {
    agent any
    tools {
    maven 'maven_3_8_4'
    }
    stages {
        stage('build') {
            steps {
                checkout scmGit(branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/mailtomohammedshakeelkhan/springboot-docker']])
            }
        }
}