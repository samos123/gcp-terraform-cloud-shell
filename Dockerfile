FROM gcr.io/cloudshell-images/cloudshell:latest

ENV TERRAFORM_VERSION=0.11.10

#     echo "${TERRAFORM_SHA256SUM}  terraform_${TERRAFORM_VERSION}_linux_amd64.zip" > terraform_${TERRAFORM_VERSION}_SHA256SUMS && \
#    sha256sum -cs terraform_${TERRAFORM_VERSION}_SHA256SUMS && \

WORKDIR $GOPATH/src/github.com/hashicorp/terraform
RUN curl https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip > terraform_${TERRAFORM_VERSION}_linux_amd64.zip && \
    unzip terraform_${TERRAFORM_VERSION}_linux_amd64.zip -d /bin && \
    rm -f terraform_${TERRAFORM_VERSION}_linux_amd64.zip