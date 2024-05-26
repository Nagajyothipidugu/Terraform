#ec2 variables
variable "instance_names" {
    type = list 
    default = ["db","backend","frontend"] 
}
 
variable "image_id" {
  type        = string
  default  = "ami-090252cbe067a9e58"
  description = "RHEL-9  AMI ID" #optional
}

variable  "instance_type" { 

    type = string 
    default = "t3.micro" 
}

variable "common_tags" {

    default = { 

        project = "Expense" 
        Environment = "Dev" 
        Terraform="True"
       
    }
}

#sg variables
variable  "sg_name"  {
    default = "allow-ssh"
}

variable "sg_description"  {
        default = "allowing port no 22"
}

variable  "ssh_port" {
    default = 22 
}
variable "protocol" {
    default= "tcp"
}

variable "allowed_cidr" {
    type = list(string)
    default = ["0.0.0.0/0"]

}

#r53 variables 

variable "zone_id" {

    default ="Z07065651AICZQCZFF3CV"
}

variable "domain_name" {
    default = "devaws46.online"
}


