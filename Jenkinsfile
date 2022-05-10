pipeline {
    agent {
        label 'docker'
    }

    stages { 

        stage('git clone') {
            steps {
                sh 'rm -rvf jenkins_slave_pipeline'
                sh 'git clone https://github.com/amol1567/jenkins_slave_pipeline.git'
                sh 'pwd'
                sh 'ls -l jenkins_slave_pipeline'
            }
        }

        stage('Docker build') {
            steps {
                sh 'sudo docker build --no-cache -t kloudlearn-image .'
            }
        }

        stage('Run application') {
            steps {
                sh 'sudo docker run -it --rm kloudlearn-image'
            }
        }
    }
}
