output "public_ip" {
  description = "Elastic IP address"
  value       = aws_eip.this.public_ip
}

output "allocation_id" {
  description = "Elastic IP allocation ID"
  value       = aws_eip.this.id
}
