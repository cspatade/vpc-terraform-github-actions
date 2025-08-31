data "aws_ami" "amazon-2" {
  most_recent = true
  owners      = ["amazon"] # Owned by Amazon
  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*-x86_64-gp2"] # Filter for Amazon Linux 2 AMIs
  }
  filter {
    name   = "architecture"
    values = ["x86_64"]
  }
}



data "aws_availability_zones" "available" {
    state = "available"
}