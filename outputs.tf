output "instance_id" {
  value = aws_instance.my_instance.id
}

output "instance_details" {
  value = {
    id   = aws_instance.my_instance.id
    ip   = aws_instance.my_instance.public_ip
    type = aws_instance.my_instance.instance_type
  }
}

output "instance_ip" {
  value = var.enable_instance ? aws_instance.my_instance.public_ip : "Instance not enabled"
}

output "formatted_ip" {
  value = format("Instance IP: %s", aws_instance.my_instance.public_ip)
}