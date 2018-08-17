## Dockerfile for running Terraform + Ansible

This image is based off Alpine 3.8 linux, with Terraform installed.

In addition the image has no entrypoint, except displaying the current terraform and would recommend using docker-compose version 3+ entrypoint to run your terraform provisioning:

entrypoint: sh -c 'terraform init && terraform apply -auto-approve'

Current Dependencies or version supported:
Terraform 0.11.8
