resource "aws_security_group" "example" {
  vpc_id = aws_vpc.example.id

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