terraform {
  backend "s3" {
    bucket = "devops-tf-state"
    key    = "terraform.tfstate"
    region = "ap-south-1"
  }
}
