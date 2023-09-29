resource "aws_instance" "web" {
  ami           = data.aws_ami.example.id
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-0df2cde9ab8f70430"]

  tags = {
    Name = "provisioner"
  }
  connection {
    type     = "ssh"
    user     = "centos"
    password = "DevOps321"
    host     = self.public_ip
  }

  provisioner "remote-exec" {
    inline = [
      "sudo labauto ansible",
      "ansible-pull -i localhost -U https://github.com/sriteja28/roboshop-ansible main.yml -e env=dev -e role_name=frontend"
    ]
  }
}



data "aws_ami" "example" {
  owners = ["973714476881"]
  most_recent      = true
  name_regex       = "Centos-8-DevOps-Practice"
}