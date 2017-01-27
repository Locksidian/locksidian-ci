FROM debian:latest
MAINTAINER Valentin Fries <contact@fries.io>

RUN apt-get update \
 && apt-get install -y curl g++ git \
 && curl https://sh.rustup.rs/ -sSf | sh -s -- --default-toolchain stable -y \
 && apt-get clean \
 && rm -rf /tmp/*

ENV PATH=/root/.cargo/bin:$PATH \
    USER=root
