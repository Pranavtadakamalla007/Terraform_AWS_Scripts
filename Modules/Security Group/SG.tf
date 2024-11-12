provider "aws"{
    region = "us-east-1"
}

resource "aws_security_group" "one"{
    for_each = var.sg_variables

    name = each.value.sg_name
    vpc_id = var.vpc_id[each.value.vpc_key]

    ingress{
        from_port = 80
        to_port = 80
        protocol = "tcp" 
        cidr_blocks = ["0.0.0.0/0"] 
    }

    ingress{
        from_port = 443
        to_port = 443
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    ingress{
        from_port = 22
        to_port = 22 
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    egress{
        from_port = 0
        to_port = 0
        protocol = -1
        cidr_blocks = ["0.0.0.0/0"]
    }
} 