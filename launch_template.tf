
# https://docs.nginx.com/nginx/deployment-guides/amazon-web-services/ec2-instances-for-nginx/
# voir pour créer un ami avec nginx installé
# et lancer une instance avec ce ami
# https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/launching-instance.html
resource "aws_launch_template" "nginx" {
  name_prefix = "nginx-launch_template"

  image_id = "ami-0d24c266de1794536"

  instance_type = "t2.micro"

  vpc_security_group_ids = [aws_security_group.allow_http_proxy.id]

  key_name = "auth_key_pair"

}
