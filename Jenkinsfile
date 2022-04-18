def gitee_token='324761a7-915a-452c-ad7c-b548f3a6f7bd'
def git_url = 'https://gitee.com/nvd11/ansible-home-server.git'
def branch_name="master"
def app_name="playbooks"
def app_path="/opt/apps"

pipeline {

    agent { node { label 'master' } }

    stages {

        stage('clean workspace') {
            steps {
                sh 'pwd'
                sh 'rm -rf ./*'
            }
        }

        stage('down load source codes') {
            steps {
                echo "git pull.."
                git credentialsId: gitee_token, poll: false, url: git_url, branch: branch_name
            }
        }

        stage('copy to app folder'){
            steps {
                script {
                    sh "cp -a playbooks/* ${app_path}/${app_name}"
                }
            }
        }


        stage('completed') {
            steps {
                 println 'build is completed'
            }
        }
    }
}