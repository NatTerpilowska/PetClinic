pipeline{
    agent any
    environment{
        DATABASE_URI = credentials('DATABASE_URI')
        DOCKERHUB_CREDENTIALS = credentials('DOCKERHUB_CREDENTIALS')
    }
    stages{
        stage('Install Requirements'){
            steps{
                sh "cd spring-petclinic-rest && bash scripts/install.sh"
            }
        }
        stage('Testing'){
            steps{
                sh "cd spring-petclinic-rest && bash scripts/test.sh"
            }
        }   
        stage('Build Images'){
            steps{
                sh "bash scripts/build.sh"
            }
        }
        stage('Push Images'){
            steps{
                sh "bash scripts/push.sh"
            }
        }
        stage('Terraform'){
            steps{
                sh "bash scripts/terraform.sh"
            }
        }
        stage('Configure & Deploy'){
            steps{
                sh "bash scripts/deploy.sh"
            
            }
        }
    }
}