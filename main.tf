# Main.tf

# Set up AWS
provider "aws" {
  region = "${var.region}"
  access_key = "${var.access_key}"
  secret_key = "${var.secret_key}"
}

# Deploy storage resources
module "storage" {
  source = "./storage"
  project_name = "${var.project_name}"
}

# Deploy networking resources
module "networking" {
  source = "./networking"
  vpc_cidr = "${var.vpc_cidr}"
  accessip = "${var.accessip}"
  public_cidrs = "${var.public_cidrs}"
}

# Deploy compute resources
module "compute" {
  source = "./compute"
  public_key_path = "${var.public_key_path}"
  public_key_name = "${var.public_key_name}"
  instance_count  = "${var.instance_count}"
  instance_type   = "${var.instance_type}"
  subnets         = "${module.networking.public_subnets}"
  security_group  = "${module.networking.public_sg}"
  subnet_ips      = "${module.networking.subnet_ips}"
}



