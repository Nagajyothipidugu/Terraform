variable "image_id" {
  type        = string
  default  = "ami-090252cbe067a9e58"
  description = "RHEL-9  AMI ID" #optional
}

variable  "instace_type" { 

    type = string 
    default = "t3.micro" 
}

variable "tags" {

    default = { 

        project = "Expense" 
        Environment = "Dev" 
        Module = "Db" 
        Name = "DB"
    }
}

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


