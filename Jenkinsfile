pipeline {
  agent any

  stage('Build') {
    steps{
      echo "stoping container"
      sh "docker stop samplerunning"
      echo "deleting image"
      sh "docker rm samplerunning"
      echo "building image"
      sh "docker build -t samplerunning ."

    }

  }
}
