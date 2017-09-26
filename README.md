## Dockerfile for running Terraform + Ansible

This image is based off Alpine 3 linux, with Ansible and Terraform. Ansible is always latest stable version from image williamyeh/ansible:alpine3-onbuild

In addition the image has no entrypoint and would recommend using docker-compose version 3+ entrypoint to run your terraform provisioning:

entrypoint: sh -c 'terraform init && terraform apply'

Current Dependencies or version supported:
Ansible 2.4.0
Terraform 0.10.6
