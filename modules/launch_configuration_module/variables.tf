variable "instance_type" {
    type = string
    description = "EC2 instance type for the terraform aws launch template"
    default = "t2.micro"
}


variable "terraform_sg_id" {
    type = string
}
