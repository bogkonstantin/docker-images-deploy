FROM alpine:3

RUN apk update && \
    apk add openssh

RUN mkdir -p ~/.ssh && \
    chmod 700 ~/.ssh && \
    echo -e "Host *\n\tStrictHostKeyChecking no\n\n" >> ~/.ssh/config
