FROM debian:latest
MAINTAINER Valentin Fries <contact@fries.io>

RUN apt-get update \
 && apt-get install -y curl g++ git \
 && curl -sSL https://raw.githubusercontent.com/docker/docker/master/hack/install.sh | sh \
 && curl -sSf https://sh.rustup.rs/ | sh -s -- --default-toolchain stable -y \
 && apt-get clean \
 && rm -rf /tmp/*

ENV PATH=/root/.cargo/bin:$PATH \
    USER=root
