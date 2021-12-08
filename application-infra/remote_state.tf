terraform {
  backend "s3" {
    encrypt = true
    bucket  = "devops-ec1-terraform"
    key     = "terraform/application.tfstate"
    region  = "eu-central-1"
    profile = "dtdl-poc"
  }
}
