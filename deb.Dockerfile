FROM ubuntu:20.04

ENV CLIENT_SECRET=${CLIENT_SECRET} \
    CLIENT_ID=${CLIENT_ID} \
    DEBIAN_FRONTEND=noninteractive \
    ENTERPRISE_ID=${ENTERPRISE_ID}

RUN apt update \
    && apt install -y curl \
                      git \
                      jq \
                      reprepro \
                      ssh \
    && mkdir staging

WORKDIR /staging

RUN mkdir -p unsigned signed

COPY val-verde-platform-sdk-fetch-debs \
     val-verde-platform-sdk-apt-repo-utils \
     distributions.in \
     /staging/

ENTRYPOINT [ "tail", "-f", "/dev/null"]