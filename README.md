# Terraform AWS Infrastructure Project

This project contains a modular Terraform implementation of AWS infrastructure.

## Project Overview

The project demonstrates how to provision and manage AWS resources using Terraform modules.

## AWS Resources

- EC2 Instance
- S3 Bucket
- VPC
- Public Subnet
- Private Subnet
- Internet Gateway
- Route Table
- Security Group
- AWS Lambda Function
- Elastic IP
- CloudWatch CPU Alarm

## Terraform Modules

```text
modules/
├── ec2/
├── s3/
├── vpc/
├── security-group/
├── lambda/
├── elastic-ip/
└── cloudwatch

##project structure

├── terraform-AWS-assistment/
│
├── lambda/
│   └── index.py
│
├── modules/
│   ├── ec2/
│   ├── s3/
│   ├── vpc/
│   ├── security-group/
│   ├── lambda/
│   ├── elastic-ip/
│   └── cloudwatch/
│
├── main.tf
├── outputs.tf
├── provider.tf
├── .gitignore
└── README.md

##Assignments Completed

Assignment 1 — EC2

Created an EC2 instance using a reusable Terraform module.

Assignment 2 — S3

Created an S3 bucket with:

Versioning enabled
Public access blocked
Assignment 3 — VPC

Created:

VPC
Public subnet
Private subnet
Internet Gateway
Public route table
Assignment 4 — Security Group

Configured inbound access for:

SSH — Port 22
HTTP — Port 80

All outbound traffic is allowed.

Assignment 5 — Lambda

Created a Python Lambda function using Terraform.

Runtime:

Python 3.12
Assignment 6 — Elastic IP

Allocated and associated an Elastic IP with the EC2 instance.

Assignment 7 — CloudWatch

Created a CloudWatch CPU utilization alarm for the EC2 instance.

Tools Used
AWS
Terraform
Git
GitHub
Linux
Python
Terraform Commands

Initialize Terraform:

terraform init

Format Terraform files:

terraform fmt

Validate configuration:

terraform validate

Create execution plan:

terraform plan

Apply infrastructure:

terraform apply

Destroy infrastructure:

terraform destroy
Security

Sensitive files are excluded using .gitignore.

The repository should not contain:

AWS credentials
.pem private keys
Terraform state files
Secret .tfvars files

##Author
Sahil Sarfaraz
