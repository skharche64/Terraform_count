variable "instance_count" {
  type = number
  default = 2
}

resource "aws_instance" "my_instance" {
  count = var.instance_count
  ami = "ami-080e1f13689e07408"
  instance_type = "t2.micro"

  tags = {
    Name = "Instance${count.index+1}"
  }
}