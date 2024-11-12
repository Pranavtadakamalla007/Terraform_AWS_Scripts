variable "subnet_ids" {
  type = map(string)
}

variable "sg_ids" {
  type = string
}

variable "ec2_variables" {
  type = map(object({
    name              = string
    ami               = string
    instance_type     = string
    subnet_key        = string
    #sg_key            = string
  }))

  default = {
    "vm1" = {
      name              = "vm1"
      ami               = "ami-06b21ccaeff8cd686"
      instance_type     = "t2.micro"
      subnet_key        = "subnet_1"
      #sg_key            = "sg_1"
    }

    "vm2" = {
      name              = "vm2"
      ami               = "ami-0ddc798b3f1a5117e"
      instance_type     = "t2.micro"
      subnet_key        = "subnet_2"
      #sg_key            = "sg_1"
    }
  }

}