FROM ubuntu:20.04

ENV CLIENT_SECRET=${CLIENT_SECRET} \
    CLIENT_ID=${CLIENT_ID} \
    DEBIAN_FRONTEND=noninteractive \
    ENTERPRISE_ID=${ENTERPRISE_ID}

RUN apt update \
    && apt install -y curl \
                      git \
                      jq \
                      ssh \
    && mkdir staging

WORKDIR /staging

RUN mkdir -p unsigned signed

COPY val-verde-platform-sdk-fetch-debs \
     /staging/

ENTRYPOINT [ "tail", "-f", "/dev/null"]