data "aws_instance" "web" {
  instance_id = "i-instanceid"

  filter {
    name   = "image-id"
    values = ["ami-03542b5588cd0e6b3"]
  }

  filter {
    name   = "tag:Name"
    values = ["web"]
  }
}