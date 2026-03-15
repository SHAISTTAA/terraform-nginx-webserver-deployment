provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "webserver" {
  ami           = "ami-0f58b397bc5c1f2e8"
  instance_type = "t2.micro"

  user_data = <<-EOF
              #!/bin/bash
              apt update -y
              apt install nginx -y
              systemctl start nginx
              systemctl enable nginx
              echo "<h1>Terraform Nginx Webserver Running</h1>" > /var/www/html/index.html
              EOF

  tags = {
    Name = "terraform-nginx-webserver"
  }
}
