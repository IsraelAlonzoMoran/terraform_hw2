# Terraform Outputs, this is information that we want to export.
output "terraform-allow-tls" {
  value = aws_security_group.terraform-allow-tls.id
}
