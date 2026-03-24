resource "aws_security_group" "example" {
  vpc_id = var.vpc_id
  name = var.sg_name

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = merge(
    var.sg_tags,
    local.common_tags,
    {
        Name = "${local.comman_name_suffix}-sg" # roboshop-dev-catalogue
    }
  )
}