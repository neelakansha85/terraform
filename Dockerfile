FROM williamyeh/ansible:alpine3-onbuild
MAINTAINER "Neel Shah <neel@hostpaas.io>"

ENV TERRAFORM_VERSION=0.10.6

# Install Terraform
RUN wget https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip

RUN unzip terraform_${TERRAFORM_VERSION}_linux_amd64.zip -d /usr/local/bin

ENTRYPOINT ["sh", "-c", "terraform -v && ansible --version"]