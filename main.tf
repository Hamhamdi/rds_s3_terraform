terraform {
  required_version = ">= 1.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "~> 3.1"
    }
  }
}

provider "aws" {
  region = var.aws_region

  default_tags {
    tags = {
      Project     = var.project_name
      Environment = var.environment
      ManagedBy   = "Terraform"
    }
  }
}

# Call the module
module "infrastructure" {
  source = "./modules/aws-infrastructure"

  aws_region     = var.aws_region
  environment    = var.environment
  project_name   = var.project_name
  db_password    = var.db_password

  # Optional overrides
  db_instance_class         = "db.t3.micro"
  db_allocated_storage      = 20
  enable_s3_versioning      = true
  backup_retention_period   = var.environment == "prod" ? 30 : 7
}
