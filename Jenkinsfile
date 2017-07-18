node {
   wrap([$class: 'AnsiColorBuildWrapper']) {
        stage('Checkout') { // for display purposes
         // send slack message - pipeline started
         //slackSend "Started ${env.JOB_NAME} ${env.BUILD_NUMBER} (<${env.BUILD_URL}|Open>)"
         // Clean workspace before checkout
         step ([$class: 'WsCleanup'])
         // Get some code from a GitHub repository
         git 'https://github.com/relybv/gen_aws_env.git'
      }
      }
}
