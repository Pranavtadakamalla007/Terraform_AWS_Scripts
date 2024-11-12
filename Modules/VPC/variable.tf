variable "vpc_variables" {
  type = map(object({
    vpc_name = string
    vpc_cidr = string
  }))

  default = {
    "vpc1" = {
      vpc_name = "vpc1"
      vpc_cidr = "10.0.0.0/16"
    }
  }
}

variable "subnet_variables" {
  type = map(object({
    subnet_name = string
    subnet_cidr = string
    subnet_AZ   = string
    vpc_key     = string
    rt_key      = string
  }))

  default = {
    "subnet_1" = {
      subnet_name = "subnet1"
      subnet_cidr = "10.0.1.0/24"
      subnet_AZ   = "us-east-1a"
      vpc_key     = "vpc1"
      rt_key      = "rt_1"
    }
    "subnet_2" = {
      subnet_name = "subnet2"
      subnet_cidr = "10.0.2.0/24"
      subnet_AZ   = "us-east-1b"
      vpc_key     = "vpc1"
      rt_key      = "rt_1"
    }
  }
}

variable "ig_variables" {
  type = map(object({
    ig_name = string
    vpc_key = string
  }))
  default = {
    "ig1" = {
      ig_name = "ig1"
      vpc_key = "vpc1"
    }
  }
}

variable "route_table_variables" {
  type = map(object({
    rt_name = string
    vpc_key = string
    ig_key = string
  }))
  default = {
    "rt_1" = {
      rt_name = "rt1"
      vpc_key = "vpc1"
      ig_key  = "ig1"
    }
  }
}