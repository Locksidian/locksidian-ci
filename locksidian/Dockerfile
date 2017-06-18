FROM debian:jessie
MAINTAINER Valentin Fries <contact@fries.io>

# Install dependencies
RUN apt-get update &&\
    apt-get install -y curl\
                        g++\
                        git\
                        libsqlite3-dev\
                        libssl-dev\
                        make\
                        pkg-config

# Configure Rust development environment
RUN curl -sSf https://sh.rustup.rs/ | sh -s -- --default-toolchain nightly -y

# Clean image
RUN apt-get clean &&\
    rm -rf /var/lib/apt/lists/* &&\
    rm -rf /tmp/*

# Configure image
ENV PATH=/root/.cargo/bin:$PATH\
    USER=root
