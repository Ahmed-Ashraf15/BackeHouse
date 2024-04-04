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
                        docker build -t Bakehouse:v5 .
                        docker tag Bakehouse:v5 ahmedashraf15/BackeHouse:v1
                        docker push ahmedashraf15/BackeHouse:v1
                    """
                }
                }
            }
        }

}
