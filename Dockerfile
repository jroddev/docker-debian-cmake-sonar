FROM debian:buster

RUN apt-get update
RUN apt-get install -y build-essential
RUN apt-get install -y git unzip wget
RUN apt-get install -y openssl libssl-dev

ARG INSTALL_FILE_DIR=/root/install-files
COPY bin $INSTALL_FILE_DIR

RUN $INSTALL_FILE_DIR/install-cmake.sh
RUN $INSTALL_FILE_DIR/install-sonar-build-wrapper.sh
RUN $INSTALL_FILE_DIR/install-sonar-scanner.sh
RUN rm -rf /tmp/*
