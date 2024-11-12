provider "aws" {
  region = "us-east-1"
}

resource "aws_vpc" "one" {
  for_each = var.vpc_variables

  cidr_block = each.value.vpc_cidr
  tags = {
    Name = each.value.vpc_name
  }
}

resource "aws_subnet" "one" {
  for_each = var.subnet_variables

  cidr_block        = each.value.subnet_cidr
  vpc_id            = aws_vpc.one[each.value.vpc_key].id
  availability_zone = each.value.subnet_AZ
  tags = {
    Name = each.value.subnet_name
  }
}

resource "aws_internet_gateway" "one" {
  for_each = var.ig_variables

  vpc_id = aws_vpc.one[each.value.vpc_key].id
  tags = {
    Name = each.value.ig_name
  }
}

resource "aws_route_table" "one" {
  for_each = var.route_table_variables

    vpc_id = aws_vpc.one[each.value.vpc_key].id

    route{
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway.one[each.value.ig_key].id
    }

    tags = {
        Name = each.value.rt_name
    }
}


resource "aws_route_table_association" "one"{
  for_each = var.subnet_variables

    subnet_id = aws_subnet.one[each.key].id
    route_table_id = aws_route_table.one[each.value.rt_key].id
}





