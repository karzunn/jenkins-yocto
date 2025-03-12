FROM ubuntu:latest

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get install -y gawk wget git-core diffstat unzip texinfo gcc-multilib \
        build-essential chrpath socat cpio python3 python3-pip python3-pexpect python-is-python3 \
        xz-utils debianutils iputils-ping python3-git python3-jinja2 libegl1-mesa libsdl1.2-dev \
        pylint3 xterm

# Fix error "Please use a locale setting which supports utf-8."
RUN apt install -y locales
RUN sed -i -e 's/# en_US.UTF-8 UTF-8/en_US.UTF-8 UTF-8/' /etc/locale.gen && \
        echo 'LANG="en_US.UTF-8"'>/etc/default/locale && \
        dpkg-reconfigure --frontend=noninteractive locales && \
        update-locale LANG=en_US.UTF-8

ENV LC_ALL en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US.UTF-8