pipeline {
  agent any
    stages {
        stage('Build') {
            steps {
                echo 'Building..'
                sh "docker stop samplerunning"
                sh "docker rm samplerunning"
                sh "docker build -t samplebuild ."
                sh "docker run -t -d -p 5050:5050 --name samplerunning samplebuild"
            }
        }
        stage('Test') {
            steps {
                sleep 5
                echo 'Testing..'
                sh "./jenkins/test.sh"
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
                input message: "Deploy complete do you want to stop it now"
                sh "docker stop samplerunning"
                sh "docker rm samplerunning"
            }
        }
    }
}