provider "aws" {
  region = "eu-west-2"

}

resource "aws_instance" "web" {
  ami           = var.ami
  instance_type = var.instance_type

  tags = {
    Name = "web"
  }
}


