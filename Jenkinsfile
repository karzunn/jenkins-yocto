pipeline {
    agent any

    stages {
        stage('Install Packages') {
            steps {
                script {
                    apt install build-essential chrpath cpio debianutils diffstat file gawk gcc git iputils-ping libacl1 liblz4-tool locales python3 python3-git python3-jinja2 python3-pexpect python3-pip python3-subunit socat texinfo unzip wget xz-utils zstd
                }
            }
        }
        stage('Configure Poky') {
            steps {
                script {
                    git clone git://git.yoctoproject.org/poky
                    cd poky
                    git checkout -t origin/styhead -b my-styhead
                }
            }
        }
        // stage('Build') {
        //     steps {
        //         script {
        //             source oe-init-build-env
        //             bitbake core-image-sato
        //         }
        //     }
        // }
    }
}