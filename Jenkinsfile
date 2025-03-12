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
                        cd poky
                        source oe-init-build-env
                        bitbake core-image-sato
                    '''
                }
            }
        }
    }
}