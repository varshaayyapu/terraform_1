pipeline{
     
 agent any
  stages{
    stage('Set Terraform path'){
      steps {
        script {
          def tfHome = tool name: 'Terraform', type: 'terraform'
          env.PATH = "${tfHome}:${env.PATH}"
        }
        sh "terraform --version"
      }
    }
    stage('Terraform Init') {
      steps {
        sh """
        terraform init
        """
      }
    }
    stage('Terraform Plan') {
      steps {
        
          sh "terraform plan -out=create.tfplan"
        
      }
    }
    stage('Approval?'){
      steps {
        input 'Deploy stack?'
      }
    }

    stage('Terraform Apply') {
      steps {
        
          sh "terraform apply create.tfplan"
        
      }
    }
  }
}
