resource "aws_instance" "Db" { 

    ami ="ami-090252cbe067a9e58" 
    vpc_security_group_ids = ["sg-07b9c7f9b6e8a66b5"]
    instance_type = "t3.micro"

    tags = {
        Name = "Data-source-practice"
     }

}