FROM gcr.io/cloudshell-images/cloudshell:latest

ENV TERRAFORM_VERSION=0.10.0

ENV TF_DEV=true
ENV TF_RELEASE=true

WORKDIR $GOPATH/src/github.com/hashicorp/terraform
RUN export PATH=$PATH:$GOPATH/bin && \
    go get github.com/mitchellh/gox && \
    git clone https://github.com/hashicorp/terraform.git ./ && \
    git checkout v${TERRAFORM_VERSION} && \
    /bin/bash scripts/build.sh

WORKDIR $GOPATH