resource "aws_instance" "Db" { 

    ami = var.image_id
    
    instance_type = var.instance_name == "db" ? "t3.small" : "t3.micro "
    

}
