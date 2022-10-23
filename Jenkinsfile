node {
    def app

    stage('Clone repository https://github.com/ponja01/test.git') {
         // Clean before build
        cleanWs()
         // We need to explicitly checkout from SCM here
        sh 'git clone https://github.com/ponja01/test.git'
        echo "Building ${env.JOB_NAME}..."

            }

    stage('Build image') {
       dir ("test") {
           app = docker.build("ponja001/get-started:test")
       }
       
    }

        stage('Push image') {
        
        docker.withRegistry('https://registry.hub.docker.com', 'credentials') {
            app.push("${env.BUILD_NUMBER}")
            app.push("latest")
        }
    }
}
