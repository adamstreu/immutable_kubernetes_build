# --- AWS Variables ---

variable "region" {
  default = "us-east-1"
}


# --- Networking Variables ---

variable "vpc_cidr" {
  default = "10.123.0.0/16"
}

variable "public_cidrs" {
  type = "list"
  default = [
    "10.123.1.0/24",
    "10.123.2.0/24",
  ]
}

variable "accessip" {
  type = "list"
  default = [
    "0.0.0.0/0",
    "0.0.0.0/0",
  ]
}

# --- Storage Variables ---

variable "project_name" {
  default = "immutable-kubernetes-build"
}

# --- Compute  variables ---

variable "instance_count" {
  default     = 2
  description = "Number of compute instances to create"
}

variable "instance_type" {
  default     = "t2.micro"
  description = "Size and type of compute instance to create"
}

variable "public_key_name" {
  default = "terraform_aws_key"
}


# --- Leave following AWS variable declarations as is and edit in terraform.tfvars ---

variable "access_key" {}
variable "secret_key" {}
variable "public_key_path" {}

