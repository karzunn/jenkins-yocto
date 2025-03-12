pipeline {
    agent {
        docker {
            image 'gmacario/build-yocto'
        }
    }
    stages {
        stage('Build') {
            steps {
                script {
                    sh '''
                        source oe-init-build-env
                        bitbake core-image-sato
                    '''
                }
            }
        }
    }
}