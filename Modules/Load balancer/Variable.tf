variable "lb_name" {
  type        = string
  default     = "Terra-lb"
  description = "Load balancer name"
}

variable "tg_name" {
  type        = string
  default     = "Terra-tg"
  description = "description"
}

variable vpc_id {
  type        = string
  description = "description"
}

variable sg_id {
  type        = string
  description = "description"
}

variable subnet_ids {
  type        = list(string)
  description = "description"
}

variable target_1_id {
  type        = string
  description = "description"
}

variable target_2_id {
  type        = string
  description = "description"
}