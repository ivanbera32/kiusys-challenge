terraform {
  backend "s3" {
    bucket         = "poc-ivan"
    key            = "terraform.tfstate"
    region         = "us-west-2"
    profile = "dev"
  }
}

