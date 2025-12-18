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
	ami = "ami-0c2b8ca1dad447f8a" 
	instance_type = "t3.micro"
    tags = {
    name = "yajna"
    }
}
