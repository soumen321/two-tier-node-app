pipeline {
    agent any
    
    environment {
        VERSION = "2.0"
    }
    
    stages {
        stage("Code"){
            steps {
                echo "Cloning ther code"
                git url:"https://github.com/soumen321/two-tier-node-app.git",branch : "main"
            }
        }
        stage('Build'){
            steps {
                echo "Building the code"
                sh "docker build -t my-remider-app ." 
            }
            
        }
        stage('Push to Docker Hub'){
            steps {
                echo "Pushing the image to dicker image"
                withCredentials([usernamePassword(credentialsId:"dockerHub",passwordVariable:"dockerHubPass",usernameVariable:"dockerHubUser")]){
                sh "docker tag my-remider-app ${env.dockerHubUser}/my-remider-app:${VERSION}"    
                sh "docker login -u ${env.dockerHubUser} -p ${env.dockerHubPass}" 
                sh "docker push ${env.dockerHubUser}/my-remider-app:${VERSION}"
                }
            } 
        }
        stage('Deploy'){
            steps {
                echo "Deploying the coniainer"
                sh "docker-compose -f reminder.yml down && VERSION=${VERSION} docker-compose -f reminder.yml up -d"
            }
        }
    }
}
