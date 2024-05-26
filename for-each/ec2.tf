resource "aws_instance" "expense" { 

    for_each= var.instance_names #each.key and each.value 
    ami = data.aws_ami.ami_info.id
    vpc_security_group_ids = ["sg-07b9c7f9b6e8a66b5" ] #replace with your SG ID
    instance_type = each.value
    # left side things are called as arguments, right side are values.
    tags =  merge(
        var.common_tags ,
        {
            Name = each.key
            Module = each.key
        }
    )
}