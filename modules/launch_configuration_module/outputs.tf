# Terraform Outputs, this is information that we want to export.
output "terraform_lc_id" {
  value = aws_launch_configuration.terraform-launch-configuration.id
}
