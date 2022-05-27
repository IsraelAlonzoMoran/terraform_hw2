resource "aws_launch_configuration" "terraform-launch-configuration" {
  name_prefix            = "terraform-asg-template-t2micro"
  image_id               = "ami-0ca285d4c2cda3300"
  instance_type          = var.instance_type
  ebs_optimized          = true
  security_groups        = [aws_security_group.terraform_sg_id.id]

  lifecycle {
    create_before_destroy = true
  }


  credit_specification {
    cpu_credits = "standard"
  }

}
