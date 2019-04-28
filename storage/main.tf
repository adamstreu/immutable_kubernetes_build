# Create an S3 Code Bucket.

# Create a Random id
resource "random_id" "tf_bucket_id" {
  byte_length = 2
}

# Create Buket
resource "aws_s3_bucket" "tf_code" {
  bucket        = "${var.project_name}-${random_id.tf_bucket_id.dec}"
  acl           = "private"
  force_destroy = true

  tags {
    name = "tf_bucket"
  }
}
