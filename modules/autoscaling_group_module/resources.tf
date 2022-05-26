resource "aws_autoscaling_group" "asg" {
  
   tags = {
        Name = "israel-terraform-asg"
  }
  desired_capacity  = 2
  min_size          = 2
  max_size          = 2
}