pipeline {
  agent any
    stages {
        stage('Build') {
            steps {
                echo 'Building..'
                sh "docker stop simplerunning"
                sh "docker rm simplerunning"
                sh "docker build -t simplebuild ."
                sh "docker run -t -d -p 5050:5050 --name simplerunning simplebuild"
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
                input message: "Deploy complete do you want to stop it now go to {http://localhost:5050}"
                sh "docker stop simplerunning"
            }
        }
    }
}