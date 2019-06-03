FROM gcr.io/cloudshell-images/cloudshell:latest

ENV TERRAFORM_VERSION="0.11.10" \
    HELM_VERSION="v2.14.0"

WORKDIR /tmp

RUN curl https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip > terraform_${TERRAFORM_VERSION}_linux_amd64.zip && \
    unzip terraform_${TERRAFORM_VERSION}_linux_amd64.zip -d /bin && \
    wget -q https://storage.googleapis.com/kubernetes-helm/helm-${HELM_VERSION}-linux-amd64.tar.gz -O - | tar -xzO linux-amd64/helm > /usr/local/bin/helm && \
    chmod +x /usr/local/bin/helm && \
    rm -f terraform_${TERRAFORM_VERSION}_linux_amd64.zip
