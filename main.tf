terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}




module "ec2" {
  source = "./modules/ec2"

  ami_id                 = var.ami_id
  instance_type          = var.instance_type
  key_name               = var.key_name
  name                   = var.name
  subnet_id              = module.vpc.public_subnet_id
  vpc_security_group_ids = [module.security_group.security_group_id]
}

module "s3" {
  source = "./modules/s3"

  bucket_name = "terraform-s3-sahil01"
}

module "vpc" {
  source = "./modules/vpc"

  vpc_cidr            = "10.0.0.0/16"
  public_subnet_cidr  = "10.0.1.0/24"
  private_subnet_cidr = "10.0.2.0/24"
  availability_zone   = "us-east-1a"
}

module "security_group" {
  source = "./modules/security-group"

  name   = "terraform-assignment-sg"
  vpc_id = module.vpc.vpc_id
}

module "lambda" {
  source = "./modules/lambda"

  function_name = "terraform-assignment-lambda"
  runtime       = "python3.12"
}

module "elastic_ip" {
  source = "./modules/elastic-ip"

  instance_id = module.ec2.instance_id
}

module "cloudwatch" {
  source = "./modules/cloudwatch"

  alarm_name         = "terraform-assignment-cpu-alarm"
  instance_id        = module.ec2.instance_id
  threshold          = 80
  evaluation_periods = 1
  period             = 300
}
