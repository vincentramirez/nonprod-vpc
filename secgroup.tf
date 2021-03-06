resource "aws_security_group" "vinnie-sg" {
  vpc_id = "${aws_vpc.vinnie.id}"
  name = "vinnie-sg"
  description = "security group that allows ssh and all egress traffic"
  egress {
      from_port = 0
      to_port = 0
      protocol = "-1"
      cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
      from_port = 22
      to_port = 22
      protocol = "tcp"
      cidr_blocks = ["98.228.185.91/32"]
  } 
tags {
    Name = "allow-ssh"
  }

  ingress {
      from_port = 80
      to_port = 80
      protocol = "tcp"
      cidr_blocks = ["98.228.185.91/32"]
  }
tags {
    Name = "allow-HTTP"
  }

}
