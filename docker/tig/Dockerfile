FROM ubuntu:20.04

RUN apt-get update \
    && DEBIAN_FRONTEND=noninteractive apt-get install --no-install-recommends --yes \
       tig \
    && apt-get clean \
    && apt-get autoremove \
    && rm -fr /var/lib/apt/lists/*
