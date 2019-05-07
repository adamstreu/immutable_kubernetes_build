# Immutable Kubernetes Cluster Build on (AWS or Vagrant)
Image built in Packer with Ansible provisioner
Deployed to architecture built on Terraform
As a (HA) Kubernetes cluster with a DOcker runtime.

# Project In progress
Modifying below......


# aws_infrastructure
Terraform Build on AWS

# Instructions to Run.....
Create a file in the top directory called 'terraform.tsvars'.
Into the file put...

	access_key = "your_aws_api_access_key"
	secret_key = "your_aws_api_secret_key"
	public_key_path = "/path/to/file/.ssh/id_rsa.pub"

You may modify a few build variables within the variables.tf file 
found in the top directory.

A Terraform apply command should do the rest.

