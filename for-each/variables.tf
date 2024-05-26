variable "instance_names" {
   type = map 
   default = {

     db = "t3.small"
     backend="t3.micro"
     frontend="t3.micro"
   }
}

variable "common_tags" {

    default = {
        project="Expense" 
        terraform ="true"
    }
}

variable "zone_id" {

    default ="Z07065651AICZQCZFF3CV"
}

variable "domain_name" {
    default = "devaws46.online"
}
