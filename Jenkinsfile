pipeline{
    agent any
    stages{
    stage('Build Docker image'){
        steps{
            sh 'docker build -t rwright/todopipe:latest'
        }
    }
    stage('Push Docker Image'){
        steps{
            sh 'docker push rwright/todopipe:latest'
        }
    }
    stage('Run Docker Container'){
        steps{
            sh 'docker run -d -p 5000:5000 --name to-do-container rwright/todopipe:latest'
        }
    }
    }
}