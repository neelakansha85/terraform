## Dockerfile for running Terraform + Ansible

This image is based off Alpine 3.6 linux, with Ansible and Terraform. I have used references from williamyeh's ansible docker image to install ansible on alpine linux.

In addition the image has no entrypoint, except displaying the current terraform and ansible version and would recommend using docker-compose version 3+ entrypoint to run your terraform provisioning:

entrypoint: sh -c 'terraform init && terraform apply'

Current Dependencies or version supported:
Ansible 2.4.2
Terraform 0.11.13
Boto 2.48.0
