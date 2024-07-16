resource "aws_instance" "instance1" {
  ami                         = "ami-0b72821e2f351e396"
  instance_type               = "t2.small"
  count                       = 1
  key_name                    = "Onekey"
  vpc_security_group_ids     = ["sg-084466caf0b08812c"]
  subnet_id                   = "subnet-01b48833cdee67b0d"
  associate_public_ip_address = true
  user_data                   = "${file("data.sh")}"

  tags = {
    Name = "demoinstance"
  }
}
