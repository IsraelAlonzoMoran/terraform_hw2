variable aws_region { default = "us-west-2" }

variable "terraform-availability-zones" {
    default = {
        us-west-2 = "us-west-2a, us-west-2b, us-west-2c"
    }
  
}
/*
variable "terraform_lc_id" {
  type = string
}
*/
variable "instance_type" {
    type = string
    description = "EC2 instance type for the terraform aws launch template"
    default = "t2.micro"
}

variable "terraform-private-subnet-1_id" {
  type = string
  
}

variable "terraform-private-subnet-2_id" {
  type = string
  
}

variable "terraform-private-subnet-3_id" {
  type = string
  
}

variable "terraform-allow-tls" {
  
  type = string

}
