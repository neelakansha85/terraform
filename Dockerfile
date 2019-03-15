FROM alpine:3.8

MAINTAINER "Neel Shah <neel@hostpaas.io>"

ENV TERRAFORM_VERSION=0.11.13

RUN apk --update add openssl wget && \
	\
	echo "===> Installing Terraform..." && \
	wget https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip && \
	\
	unzip terraform_${TERRAFORM_VERSION}_linux_amd64.zip -d /usr/local/bin && \
	rm terraform_${TERRAFORM_VERSION}_linux_amd64.zip && \
	\
	echo "===> Installing Git..." && \
	apk --update add git

ENTRYPOINT ["sh", "-c", "terraform -v"]