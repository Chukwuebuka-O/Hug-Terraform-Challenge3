terraform {
  required_version = ">= 1.5.0"
  
  backend "s3" {
    bucket       = "news3store-tf-state-prjct3"
    key          = "./terraform.tfstate"
    region       = "eu-north-1"
    use_lockfile = true
    encrypt      = true
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}
