output "name" {
  value = aws_instance.name.private_ip

}

output "pub" {
  value = aws_instance.name.public_ip

}

output "ami" {
  value = aws_instance.name.ami

}