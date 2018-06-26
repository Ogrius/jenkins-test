pipeline {
  agent none
  stages {
    stage('Generate list') {
      agent any
      steps {
        sh 'ls'
	sh './testscript.sh'
	sh 'cat tmp.sync-repos'
      }
    }
  }
}
