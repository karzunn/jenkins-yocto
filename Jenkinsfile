pipeline {
    agent {
        docker {
            image 'gmacario/build-yocto'
        }
    }
    stages {
        stage('Configure Poky') {
            steps {
                script {
                    sh '''
                        git clone "git://git.yoctoproject.org/poky"
                        cd poky
                        git checkout -t origin/styhead -b my-styhead
                    '''
                }
            }
        }
        // stage('Build') {
        //     steps {
        //         script {
        //             sh '''
        //                 source oe-init-build-env
        //                 bitbake core-image-sato
        //             '''
        //         }
        //     }
        // }
    }
}