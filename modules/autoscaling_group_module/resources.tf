resource "aws_launch_configuration" "terraform-launch-configuration" {
  name_prefix            = "israel-terraform-asg-template-t2micro"
  image_id               = "ami-0ca285d4c2cda3300"
  instance_type          = var.instance_type
  security_groups        = [var.terraform-allow-tls]

  lifecycle {
    create_before_destroy = true
  }

  
}

resource "aws_autoscaling_group" "terraform-asg" {
  name = "israel-terraform-asg-hw2"
  vpc_zone_identifier = [var.terraform-private-subnet-1_id, var.terraform-private-subnet-2_id, var.terraform-private-subnet-3_id]
  launch_configuration = aws_launch_configuration.terraform-launch-configuration.name
  desired_capacity   = 2
  max_size           = 2
  min_size           = 2
  health_check_grace_period = 300
  health_check_type = "EC2"
  force_delete = true
  

  tag {
    key                 = "Name"
    value               = "israel-terraform-asg-for-EC2-instance"
    propagate_at_launch = true
  }

}







 
