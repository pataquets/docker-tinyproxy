FROM pataquets/ubuntu:focal

RUN \
  apt-get update && \
  DEBIAN_FRONTEND=noninteractive \
    apt-get -y install tinyproxy \
  && \
  apt-get clean && \
  rm -rf /var/lib/apt/lists/*
