FROM debian:jessie
MAINTAINER Valentin Fries <contact@fries.io>

# Installing linux environment stuffs
RUN apt-get update\
    && apt-get install -y curl\
                        g++\
                        git\
                        libsqlite3-dev

# Configuring Rust development environment
RUN curl -sSf https://sh.rustup.rs/ | sh -s -- --default-toolchain nightly -y

# Cleaning image
RUN apt-get clean\
    && rm -rf /var/lib/apt/lists/*\
    && rm -rf /tmp/*

# Configuring image
ENV PATH=/root/.cargo/bin:$PATH\
    USER=root
