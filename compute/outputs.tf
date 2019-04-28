# Compute / Outputs.tf
output "aws_key_name" {
  value = "AWS-KEY-NAME: ${aws_key_pair.tf_auth.key_name}"
}
