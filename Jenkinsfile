node {
    def app

    stage('Clone repository') {
        /* Let's make sure we have the repository cloned to our workspace */

        checkout scm
    }

    stage('Build image') {
        /* This builds the actual image; synonymous to
         * docker build on the command line */
        //app = docker.build("alokmalakar/demoapp")
        app = docker.build("161764708719.dkr.ecr.us-east-1.amazonaws.com/demoapp")
    }

    stage('Test image') {
        /* you can include a test framework against our image.
         *  ;-) */

        app.inside {
            sh 'echo "Tests passed"'
        }
    }

    stage('Push image') {
        /* Finally, we'll push the image */
        //docker.withRegistry('https://registry.hub.docker.com', 'docker-hub-credentials') {
        docker.withRegistry('https://161764708719.dkr.ecr.us-east-1.amazonaws.com', 'ecr:us-east-1:aws_ecr')    {
            //app.push("${env.BUILD_NUMBER}")
            app.push("latest")
        }
    }
}
