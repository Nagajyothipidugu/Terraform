# count and count.index don't work in locals
# locals {

#     record_names=  var.instance_names[count.index] =="frontend" ? var.domain_name : "${var.instance_names[count.index]}.${var.domain_name}"
#     record_values= var.instance_names[count.index] == "frontend" ?  [aws_instance.expense[count.index].public_ip]: [aws_instance.expense[count.index].private_ip]

# }