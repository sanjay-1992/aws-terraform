resource "aws_instance" "ec2" {
  ami           = "ami-0ddfba243cbee3768"
  instance_type = "t2.micro"
  count = var.vm_count
  tags = {
    name = "test"
  }
}
output "ec2-instance" {
  value = aws_instance.ec2[*].public_ip
}
