# Main / Outputs

output "project_name" {
  value = "${var.project_name}"
}

# Storage Outputs
output "bucket name" {
  value = "${module.storage.bucketname}"
}

# Networking Outputs
output "Public Subnets" {
  value = "${join(", ", module.networking.public_subnets)}"
}

output "subnet_ips" {
  value = "${join(", ", module.networking.subnet_ips)}"
}

output "public_sg" {
  value = "${module.networking.public_sg}"
}

# Compute Outputs
output "public instance id's" {
  value = "${module.compute.Server_id}"
}

output "public instance ip's" {
  value = "${module.compute.Server_ip}"
}
