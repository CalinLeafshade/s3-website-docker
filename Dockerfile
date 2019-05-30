FROM node:latest
LABEL maintainer="steve@leafshade.io"

ENV NPM_CONFIG_PREFIX=/home/node/.npm-global
ENV PATH=$PATH:/home/node/.npm-global/bin

RUN apt-get update && npm install -g s3-website

ENTRYPOINT ["s3-website"]
