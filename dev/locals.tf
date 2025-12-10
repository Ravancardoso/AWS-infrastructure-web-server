locals {
  environment_tags = {
    Environment = "dev"
  }

  default_tags = {
    Project   = "web-server"
    Owner     = "Ravan Cardoso"
    ManagedBy = "Terraform"
    Departament = "Devops"
  }
}