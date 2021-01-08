FROM ubuntu:20.04

RUN apt update \
    && apt install -y curl \
                      git \
                      ssh \
    && mkdir staging

WORKDIR /staging

ENTRYPOINT [ "tail", "-f", "/dev/null"]