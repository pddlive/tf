provider "aws" {
  profile = "default"
  region = "us-west-2"
}

resource "aws_s3_bucket" "tf_course" {
   bucket = "tf-course-20201221"
   acl    = "private"
}

terraform {
  backend "remote" {
    organization = "me-inc"

    workspaces {
      name = "tf_lynda"
    }
  }
}