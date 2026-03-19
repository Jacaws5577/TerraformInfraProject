pipeline {
    agent any

    environment {
        TF_WORKDIR = "Environments/${env.BRANCH_NAME}"
    }

    stages {

        stage('Terraform Init') {
            steps {
                dir("${TF_WORKDIR}") {
                    sh 'terraform init'
                }
            }
        }

        stage('Terraform Plan') {
            steps {
                dir("${TF_WORKDIR}") {
                    sh 'terraform plan -out=tfplan'
                    sh 'terraform show -no-color tfplan > tfplan.txt'
                    sh 'cat tfplan.txt'
                }
            }
        }

        stage('Approval') {
            steps {
                input message: 'Do you want to apply the changes?'
            }
        }

        stage('Terraform Apply') {
            steps {
                dir("${TF_WORKDIR}") {
                    sh 'terraform apply -auto-approve tfplan'
                }
            }
        }
    }
}
