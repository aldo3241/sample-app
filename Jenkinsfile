pipeline {
    stages {
        stage('Build') {
            steps {
                echo 'Building..'
                sh "docker stop samplerunning"
                sh "docker rm samplerunning"
                sh "docker build -t samplerunning ."
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}