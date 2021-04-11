pipeline{
    agent any
    environment {
        PATH = "${PATH}:${getTerraformpath()}"
    }

    stages{
        stage ('terraform init'){
            steps{
                sh "terraform init"
                sh "terraform apply"
            }
        }
    }
}
def getTerraformpath(){
    tfHome = tool name: 'myTerraform', type: 'terraform'
    return tfHome
}