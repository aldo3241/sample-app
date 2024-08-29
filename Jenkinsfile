pipeline {
  agent any
    stages {
      
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