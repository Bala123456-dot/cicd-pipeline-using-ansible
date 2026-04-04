pipeline {
    agent any

    environment {
        ANSIBLE_HOST_KEY_CHECKING = 'False'
    }

    stages {

        stage('Clone Repository') {
            steps {
                
                git branch: 'main', url: 'https://github.com/Bala123456-dot/cicd-pipeline-using-ansible.git'
            }
        }

        stage('Check Server Connectivity') {
            steps {
                
                sh 'ansible -i inventory web -m ping'
            }
        }

        stage('Install Dependencies') {
            steps {
                
                sh 'sudo yum install git -y'
            }
        }

        stage('Deploy Application') {
            steps {
                
                sh 'ansible-playbook -i inventory deploy.yaml'
            }
        }

        stage('Verify Deployment') {
            steps {
                echo "Checking Nginx Service"
                sh 'ansible -i inventory web -m shell -a "systemctl status nginx"'
            }
        }

    }

    post {

        success {
            echo "Deployment Successful"
        }

        failure {
            echo "Deployment Failed"
        }

    }
}
