pipeline{

    agent {
        label 'wokernode1'
    }

    stages{
        stage("checking terraform installation"){
            steps{

                sh "terraform -version"

            }

            
        }
    }
}
