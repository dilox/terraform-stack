resource "aws_security_group" "FrontEnd" {
  #name = "FrontEnd"
  tags {
        Name = "FrontEnd"
  }
  description = "Allow standard traffic"
  vpc_id = "${aws_vpc.terraformmain.id}"

  ingress {
        from_port = 80
        to_port = 80
        protocol = "TCP"
        cidr_blocks = ["10.0.0.0/24"]
  }
  ingress {
        from_port = 500
        to_port = 500
        protocol = "TCP"
        cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
        from_port = 1024
        to_port = 65535
        protocol = "TCP"
        cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
        from_port = 55
        to_port = 55
        protocol = "UDP"
        cidr_blocks = ["0.0.0.0/0"]
  }
   ingress {
        from_port = 1024
        to_port = 65535
        protocol = "UDP"
        cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    from_port   = "22"
    to_port     = "22"
    protocol    = "TCP"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
