# STORAGE / output

output "bucketname" {
  value = "This is from storage - ${aws_s3_bucket.tf_code.id}"
}
