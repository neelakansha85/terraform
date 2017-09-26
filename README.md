## Dockerfile for running Terraform + Ansible

This image is based off Alpine 3 linux, with Ansible and Terraform

In addition the image has no entrypoint and would recommend using docker-compose version 3+ entrypoint to run your terraform provisioning:

entrypoint: sh -c 'terraform init && terraform apply'

Current Dependencies or version supported:
Ansible 2.3.1
Terraform 0.10.6