# Compute / Outputs.tf

output "aws_key_name" {
  value = "AWS-KEY-NAME: ${aws_key_pair.tf_auth.key_name}"
}

output "Server_id" {
  value = "${join(", ", aws_instance.tf_server.*.id)}"
}

output "Server_ip" {
  value = "${join(", ", aws_instance.tf_server.*.public_ip)}"
}
