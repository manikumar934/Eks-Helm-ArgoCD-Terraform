terraform {
  required_version = "~> 1.14.4"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.49.0"
    }
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "2.31.0"
    }
  }
  backend "s3" {
    bucket       = "dev-lokesh01-tf-bucket"
    region       = "us-east-1"
    key          = "EKS-ArgoCD-AWS-LB-Controller-Terraform/vpc-ec2.tfstate"
    use_lockfile = true
    encrypt      = true
  }
}

provider "aws" {
  region = var.aws-region
}
