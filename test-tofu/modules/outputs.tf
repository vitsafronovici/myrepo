output "env" {
  value = aws_instance.example.tags.Environment
}

output "ami" {
  value = aws_instance.example.ami
}

output "instance_type" {
  value = aws_instance.example.instance_type
}

output "id" {
  value = aws_instance.example.id
}
