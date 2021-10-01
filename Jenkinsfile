pipeline{

    agent {
        label 'workernode1'
    }

    stages{
        stage("checking terraform installation"){
            steps{

                sh "terraform -version"

            }

            
        }
    }
}
