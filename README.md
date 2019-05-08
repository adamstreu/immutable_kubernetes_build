# Immutable Kubernetes Cluster Build on AWS
Images built in Packer with Ansible provisioner
Networking and architecture built with Terraform
As a (HA) Kubernetes cluster with a Docker runtime.

Under construction.
Image Builder working - a few lines of sloppy code still.
AWS ....


# Instructions
* Clone repository
* Install Packages
  * Vagrant
  * Ansible
  * Packer
  * Terraform
* Update correct variables
  * In the terrform directory, create a file called terraform.tfvars
  * Write file as instructed in section below.
* Run the Packer build
  * Navigate to the image_builder directory
  * Run 'Packer Build ubuntu_build.json'
* Run the Terraform build
  * Navigate to the terraform directory
  * Run 'terraform init'
  * Run 'terraform apply'



or just make script to run all of the above - or run through a ci/cd chain



# terraform.tfvars file template
Create a file in the top directory called 'terraform.tsvars'.
Into the file put...

	access_key = "your_aws_api_access_key"
	secret_key = "your_aws_api_secret_key"
	public_key_path = "/path/to/file/.ssh/id_rsa.pub"

You may modify a few build variables within the variables.tf file 
found in the top directory.


