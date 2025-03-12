pipeline {
    agent { dockerfile true }

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