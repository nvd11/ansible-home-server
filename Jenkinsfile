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

    post {
       success {
           emailext (
               subject: "SUCCESSFUL: Job '${env.JOB_NAME} [${env.BUILD_NUMBER}]'",
               body: """<p>SUCCESSFUL: Job '${env.JOB_NAME} [${env.BUILD_NUMBER}]':</p>
                   <p>Check console output at "<a href="${env.BUILD_URL}">${env.JOB_NAME} [${env.BUILD_NUMBER}]</a>"</p>""",
               to: "nvd11@163.com",
               from: "nvd11@163.com"
           )
       }

       failure {
           emailext (
               subject: "FAILED: Job '${env.JOB_NAME} [${env.BUILD_NUMBER}]'",
               body: """<p>FAILED: Job '${env.JOB_NAME} [${env.BUILD_NUMBER}]':</p>
                   <p>Check console output at "<a href="${env.BUILD_URL}">${env.JOB_NAME} [${env.BUILD_NUMBER}]</a>"</p>""",
               to: "nvd11@163.com",
               from: "nvd11@163.com"
           )
       }
    }
}