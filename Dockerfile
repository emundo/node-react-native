FROM node:9.8.0-alpine

RUN apk update && apk upgrade
RUN apk add git

## Install React-Native
RUN npm install -g react-native

## emundo User
RUN addgroup -g 9999 aws && \
    # We need this group for AWS
    adduser -h /home/emundo -D -s /bin/bash -G aws emundo 

USER emundo
WORKDIR /home/emundo
