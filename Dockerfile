FROM zenika/alpine-maven
MAINTAINER Eric Lima <eric.george.lima@gmail.com>

RUN apk update && apk upgrade && apk add --no-cache bash git openssh
COPY cse-empresa.sh /usr/src/app/
CMD  /usr/src/app/cse-empresa.sh