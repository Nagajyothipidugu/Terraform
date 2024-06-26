resource "aws_instance" "Db" { 
    #count=3
    count = length(var.instance_names) 
    ami ="ami-090252cbe067a9e58" 
    vpc_security_group_ids = [aws_security_group.allow_ssh.id]
    instance_type = "t3.micro"

    tags = {
        Name = var.instance_names[count.index]
     }

}

#resource <resource-type>   <resource-name>
resource "aws_security_group" "allow_ssh" { 

    name = "allow-ssh"
    description =  "Allowing SSH access"

    ingress {
      from_port        = 22
      to_port          = 22
      protocol         = "tcp"
      cidr_blocks      = ["0.0.0.0/0"]
      
       }     


    egress {
        from_port        = 0 # from 0 to 0 means , opening all protocols
        to_port          = 0
        protocol         = "-1" # all protocols
        cidr_blocks      = ["0.0.0.0/0"]
    
       }

    tags = {
     Name = "allow_ssh"
     CreatedBy = "jyothi" 
    }
}
