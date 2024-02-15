#!groovy

/* groovylint-disable-next-line CompileStatic */
pipeline {
  agent {
    dockerfile {
      filename 'Dockerfile'
      args '-u 0:0'
    }
  }

  stages {
    stage('npm install and build') {
      steps {
        dir('/AngularCoreJenkins/ClientApp')
          {
            sh '''
              npm install
            '''
          }
      }
    }
  }
}
