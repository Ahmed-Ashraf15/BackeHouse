pipeline {
    agent {
        label 'ec2'
    }

    stages {
        stage('Build') {
            steps {
                script {
                    sh """
                        docker login -u "${Docker_ID}" -p "${Docker_Pass}"
                        docker build -t bakehouse:v5 .
                        docker tag bakehouse:v5 ahmedashraf15/backehouse:v"${BUILD_NUMBER}"
                        docker push ahmedashraf15/backehouse:v"${BUILD_NUMBER}"
                    """
                }
                }
            }

         stage('Deploy') {
            steps {
                script {
                    sh """
                        docker run -tdp 9000:80 ahmedashraf15/backehouse:v"${BUILD_NUMBER}"
                    """
                }
                }
            }
        }

}
