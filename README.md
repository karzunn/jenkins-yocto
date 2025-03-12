# Overview
A Jenkins pipeline that utilizes bitbake to build the Yocto Project's reference distribution (Poky).

# Dockerfile
The Dockerfile in this repo is mostly sourced from the ```gmacario/build-yocto``` image. It handles the following:
- Installing dependencies needed by the build system
- Creating a Jenkins user
- Creating a user to run the build
- Configuring locale requirements
- Clone the Poky repo and checkout the styhead branch

# Jenkinsfile
The docker image defined by the Dockerfile is used to build a container in which the pipeline will run. Considering Yocto is already configured in the image, all that is left to do is an env setup followed by the build itself. These are handled in the single ```Build``` step. We install and configure as much as possible in the docker image so that we can utilize caching for faster builds.