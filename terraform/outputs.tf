#output "instancepublicdns" {
 # description = "E2C Public DNS"
  #value = aws_instance.ec2demo.public_dns
 # }

#output "instance_publicip" {
#  description = "E2C Public IP"
#  value = aws_instance.ec2demo.public_ip
#}

#Output - for loop with loop for e2C instance with count
# output "instancepublicdns" {
#   description = "E2C Public DNS"
#   value = [for instance in aws_instance.ec2demo: instance.public_dns]
#  }


# #mapped list for loop
# output "instance_publicip" {
#   description = "E2C Public IP"
#   value ={ for instance in aws_instance.ec2demo: instance.id => instance.public_ip}
# }

# output "latest_generalized_splat_instance_publicdns" {
#   description = "Generalized latest splat operator"
#   value = aws_instance.ec2demo[*].public_dns
# }
