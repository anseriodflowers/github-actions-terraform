

# # Resource Block
resource "aws_instance" "ec2demo" {
  ami = "ami-005f9685cb30f234b" # Amazon Linux in us-east-1, update as per your region
  instance_type = var.instance_type
  vpc_security_group_ids = [ aws_security_group.vpc-web.id, aws_security_group.vpc-ssh.id ]
  user_data = file("${path.module}/userdata.tpl") 
  count = 3
  tags = { 
    Name = "awsserver-02${count.index}"
  } 
  timeouts {
    create = "60m"
    delete = "2h"
  }
}


# resource "aws_launch_template" "mylaunchtemplate" {
#   #Name of image
#   name = "mylaunchtemplate"
#   #Base AMI Image
#   image_id = "ami-06640050dc3f556bb"
#   instance_initiated_shutdown_behavior = "terminate"
#   #Instance Type of template
#   instance_type = "t2.micro"
#   key_name = var.instance_keypair
#   security_group_names = [ "vpc-ssh", "vpc-web" ]

#   tag_specifications {
#     resource_type = "instance"

#     tags = {
#       Name = "test"
#     }
#   }

#   user_data = filebase64("${path.module}/userdata.sh")
# }


# resource "aws_ami_from_instance" "myredhatami" {
#   name               = "redhat-temp-ami"
#   source_instance_id = "i-0de09a1fbe07536ff"

#  tags = {
#   Name = "redhat-temp-ami"
#  }
# }

#AMI Created: ami-0ebfc96fcb78448a3
