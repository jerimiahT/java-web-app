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

data "aws_instance" "web" {
   filter {
    name   = "tag:Name"
    values = ["web"]
  }
}

output "instanceid" {
    value = data.aws_instance.web.availability_zone
}


