# provider
provider "aws" {
  region = "us-east-1"
}


# terraform state

terraform {

  backend "s3" {
    bucket         = "terraform-state-project-web-server-lab-ravan"
    key            = "web-server-lab/development/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-state-lock"
  }

}