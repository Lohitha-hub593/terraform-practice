terraform {
  backend "s3" {
    bucket = "statefilebkt"
    key    = "terraform.tfstate"
    region = "ap-south-1"
  }
}