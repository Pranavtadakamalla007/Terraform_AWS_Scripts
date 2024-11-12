provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "one" {
  for_each = var.ec2_variables

  ami                    = each.value.ami
  instance_type          = each.value.instance_type
  vpc_security_group_ids = [var.sg_ids]
  subnet_id              = var.subnet_ids[each.value.subnet_key]
  tags = {
    Name = each.value.name
  }
}

