provider "aws" {
  region = "us-east-1"
}


resource "aws_lb" "one" {
  name               = var.lb_name
  internal           = false
  load_balancer_type = "application"
  security_groups    = [var.sg_id]
  subnets            = var.subnet_ids

  enable_deletion_protection = false
}

resource "aws_lb_target_group" "one" {
  name     = var.tg_name
  port     = 80
  protocol = "HTTP"
  vpc_id   = var.vpc_id

  health_check {
    path                = "/"
    interval            = 30
    timeout             = 5
    healthy_threshold   = 5
    unhealthy_threshold = 2
    matcher             = "200"
  }
}

resource "aws_lb_listener" "one" {
  load_balancer_arn = aws_lb.one.arn
  port              = "80"
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.one.arn
  }
}

resource "aws_lb_target_group_attachment" "one" {
  target_group_arn = aws_lb_target_group.one.arn
  target_id        = var.target_1_id
  port             = 80
}

resource "aws_lb_target_group_attachment" "two" {
  target_group_arn = aws_lb_target_group.one.arn
  target_id        = var.target_2_id
  port             = 80
}