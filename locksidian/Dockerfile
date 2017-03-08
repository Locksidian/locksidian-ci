FROM debian:latest
MAINTAINER Valentin Fries <contact@fries.io>

RUN apt-get update && \
    apt-get install -y curl g++ git libsqlite3-dev && \
    curl -sSf https://sh.rustup.rs/ | sh -s -- --default-toolchain nightly -y && \
    apt-get clean && \
    rm -rf /tmp/*

ENV PATH=/root/.cargo/bin:$PATH \
    USER=root
