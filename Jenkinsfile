pipline {
  agent any
  stages {
    stage ('build'){
      steps{
        sh "docker stop samplerunning"
        sh "docker rm samplerunning"
        sh "docker build -t samplerunning ."
      }
    }

  }
}
