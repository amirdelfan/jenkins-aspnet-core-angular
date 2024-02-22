pipeline {
    agent {
        node {
            label "docker_angular_aspcore_agent" 
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
        stage('Test') {
          steps {
            dir('AngularCoreJenkins')
              {
                  // run the unit tests for the asp.net core application
                  sh 'dotnet test'
                  
              }
            }
        }
        stage('Deploy') {
          steps {
            dir('AngularCoreJenkins')
              {
                  // deploy the asp.net core application to Azure Web App service
                  sh 'dotnet publish -c Release -o publish'
              }
          }
        }
    }
}
