variable vpc_id {
  type        = map(string)
  description = "description"
}

variable "sg_variables" {
  type = map(object({
    sg_name = string
    vpc_key = string
  }))
  default = {
    "sg_1" = {
      sg_name = "sg1"
      vpc_key = "vpc1"
    }
  }
}

