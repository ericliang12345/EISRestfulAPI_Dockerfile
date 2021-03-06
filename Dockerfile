FROM ubuntu:12.04

MAINTAINER Advantech

# yocto 
RUN apt-get update
RUN apt-get install -y gawk wget git-core diffstat unzip texinfo gcc-multilib build-essential chrpath socat libsdl1.2-dev xterm
RUN apt-get install -y sed cvs coreutils texi2html docbook-utils python-pysqlite2 help2man desktop-file-utils libgl1-mesa-dev libglu1-mesa-dev mercurial autoconf automake groff curl lzop asciidoc

# update to gcc-4.8 used by node.js 5.x
RUN apt-get update
RUN apt-get install -y python-software-properties
RUN add-apt-repository ppa:ubuntu-toolchain-r/test
RUN apt-get update
RUN apt-get install -y gcc-4.8 g++-4.8
RUN update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-4.8 50
RUN update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-4.8 50
#RUN update-alternatives --install /usr/bin/cpp cpp /usr/bin/cpp-4.8 50
#check 
RUN update-alternatives --set gcc /usr/bin/gcc-4.8
RUN update-alternatives --set g++ /usr/bin/g++-4.8
#RUN update-alternatives --set cpp /usr/bin/cpp-4.8

# update to subversion-1.7
RUN apt-add-repository ppa:dominik-stadler/subversion-1.7
RUN apt-get update
RUN apt-get install -y subversion


# tools
RUN apt-get install -y vim
RUN apt-get install -y sudo

#install npm & nodejs
RUN apt-get install -y npm
RUN curl -sL https://deb.nodesource.com/setup_4.x | sudo -E bash -
RUN apt-get install -y nodejs

# networking
#RUN apt-get install -y ping net-tools

# adv account
RUN useradd -m -k /home/adv adv -p adv -s /bin/bash -G sudo

# set up adv as sudo
RUN echo "adv ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers
WORKDIR /home/adv
USER adv


#Setting docker port and run node-red
EXPOSE 3000

# Run EIS API Service
#ENTRYPOINT ["/home/adv/EISAPI/npm start"]
