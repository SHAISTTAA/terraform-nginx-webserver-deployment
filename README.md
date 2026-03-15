# terraform-nginx-webserver-deployment
# Terraform Nginx Webserver Deployment

This project demonstrates how to automatically deploy a web server using Terraform.

Terraform provisions a cloud virtual machine and installs Nginx during the initialization process.

Technologies

Terraform
AWS EC2
Nginx

Infrastructure Workflow

1 Terraform creates an EC2 instance
2 User data script installs Nginx
3 Web server automatically starts
4 A basic HTML page is served

Run Instructions

Install Terraform

Configure AWS CLI credentials

Run commands

terraform init
terraform plan
terraform apply

Outcome

A running cloud server hosting a simple webpage using Nginx.
