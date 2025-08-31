terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.11.0"
    }
  }

  backend "s3" {
    bucket = "terraform-remotebackend-s33"
    key    = "dev/terraform.tfstate"
    region = "us-east-1"
  }


}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}



