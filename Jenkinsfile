pipeline {
  agent none
  stages {
    stage('Run External Syncs') {
      agent any
      steps {
        sh 'ls'
	sh './testscript.sh'
	sh 'cat tmp.sync-repos'
	script tmp.sync-repos
      }
    }
  }
}
