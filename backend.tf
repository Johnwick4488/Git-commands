terraform {
  backend "s3" {
    bucket         = "my-personal-bucket000044"
    key            = "terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
  }
}
