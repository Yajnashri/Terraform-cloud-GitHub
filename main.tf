terraform {
    required_version = "~> 1.14.3" // added latest version
    required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
     }
    }
   }

provider "aws" {
        region = "us-east-1" 
        #profile = "default"
	}

resource "aws_instance" "Yajnainfra" {
	ami = "ami-068c0051b15cdb816" 
	instance_type = "t3.micro"
    tags = {
    Name = "yajna"
    }
}
