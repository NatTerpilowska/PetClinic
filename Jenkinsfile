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
                sh "cd spring-petclinic-rest && bash scripts/build.sh"
            }
        }
        stage('Terraform'){
            steps{
                sh "cd spring-petclinic-rest && bash scripts/terraform.sh"
            }
        }
        stage('Configure & Deploy'){
            steps{
                sh "cd spring-petclinic-rest && bash scripts/deploy.sh"
            
            }
        }
    }
}