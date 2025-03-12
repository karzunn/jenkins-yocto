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
                    sh '''#!/bin/bash
                        source oe-init-build-env
                        bitbake core-image-sato
                    '''
                }
            }
        }
    }
}