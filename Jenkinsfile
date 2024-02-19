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
        stage('Build') {
            steps {
                dir('AngularCoreJenkins')
                {
                    // build the asp.net core application
                    sh 'dotnet build'
                }
                dir('AngularCoreJenkins/ClientApp')
                {
                    // build the angular application
                    sh '''
                    npm install -g @angular/cli
                    npm install
                    ng build -c production
                  '''
                }
            }
        }
    }
}
