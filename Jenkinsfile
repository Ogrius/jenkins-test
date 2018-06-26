pipeline {
  agent any
  stages {
    stage('Master') {
      steps {
        git(url: 'https://github.com/Ogrius/jenkins-test.git', branch: 'master')
        sh 'ls'
      }
    }
  }
}