FROM node:latest
LABEL maintainer="steve@leafshade.io"

RUN apt-get update && npm install s3-website

ENTRYPOINT ["s3-website"]
