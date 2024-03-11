pipeline {
    agent any

    stages {
        stage('Clone Repo') {
            steps {
                echo "Cloning Repo"
                checkout scmGit(branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/muhammadAhmed2223/MLOPS-Task2-20I-0498.git']])
            }
        }
        stage('Install Dependencies') {
            steps {
                echo 'Installing Dependencies'
                sh "make install"
            }
        }
        stage('Testing') {
            steps {
                echo 'Running Tests'
                sh "make tests"
            }
        }
        stage('Branch Name Check') {
            steps {
                echo 'Checking branch name'
                script {
                    def branchName = env.BRANCH_NAME
                    if (branchName == 'main') {
                        echo "Branch Name: ${branchName}"
                    }
                }
            }
        }
    }
}
