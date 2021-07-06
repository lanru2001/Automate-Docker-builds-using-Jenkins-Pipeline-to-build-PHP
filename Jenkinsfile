pipeline {
    agent any 
    environment {
       AWS_ACCOUNT_ID="216147165517"
       AWS_DEFAULT_REGION="us-east-2"
       IMAGE_REPO_NAME="nodejs-image-repo"
       IMAGE_TAG="216147165517.dkr.ecr.us-east-2.amazonaws.com/nodejs-image-repo:latest"
       REPOSITORY_URL="216147165517.dkr.ecr.us-east-2.amazonaws.com/nodejs-image-repo"
    }
    
    stages {
        stage('Cloning Git') {
            steps {
                checkout([$class: 'GitSCM', branches: [[name: '*/master']], doGenerateSubmoduleConfigurations: false, extensions: [], submoduleCfg: [], userRemoteConfigs: [[credentialsId: '', url: 'https://']]])       
            }
        }
    
    // Building Docker images
    stage('Building image') {
      steps{
        script {
          dockerImage = docker.build registry
        }
      }
    }
    
     // Uploading Docker images into Docker Hub
    stage('Upload Image') {
     steps{    
         script {
            docker.withRegistry( '', registryCredential ) {
            dockerImage.push()
            }
        }
      }
    }
    
     // Stopping Docker containers for cleaner Docker run
     stage('docker stop container') {
         steps {
            sh 'docker ps -f name=myPhpContainer -q | xargs --no-run-if-empty docker container stop'
            sh 'docker container ls -a -fname=myPhpContainer -q | xargs -r docker container rm'
         }
       }
    
    
    // Running Docker container, make sure port 8096 is opened in 
    stage('Docker Run') {
     steps{
         script {
            dockerImage.run("-p 8086:80 --rm --name myPhpContainer")
         }
      }
    }
  }
}
