provider "aws"{
    region = "us-east-1"
}

resource "aws_ecr_repository" "one" {
  name                 = var.repo_name
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }
}

