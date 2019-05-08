# Immutable Kubernetes Cluster Build on AWS
* Kubernetes cluster components are baked into machine Images.
* Images are built with Packer from an Ubuntu base box using an Ansible provisioner.
* Networking and architecture are configured with Terraform and deployed over AWS.
* Creates a highly available Kubernetes cluster using kubeadmn and a flannel overlay network with docker runtime.

<<<<<<< HEAD
Under construction.
Image Builder working - a few lines of sloppy code still.
AWS ....
=======
## Still to do
* Create an autoscaling group to maintain [3] controller nodes. - not an asg for fun 
* Create a metric autoscaler for worker nodes. - not an asg for fun
* Create a failover load balancer to the controller plane. - not an elb for fun.
* Automate build steps below with script or ci/cd pipeline ( with git push automation, etc.)

>>>>>>> origin

## Instructions
* Have packages installed 
  * Vagrant
  * Ansible
  * Packer
  * Terraform
* Clone repository
* Update variables
  * Fill out your AWS secrets in 'architecture/terraform.tfvars_example'.
  * Remove '_example' from 'architecture/terraform.tfvars_example'.
  * Change variables as desired in 'architecture/variables.tf'
* Run the Packer build
  * Navigate to the image_builder directory
  * Run 'Packer Build ubuntu_build.json'
* Run the Terraform build
<<<<<<< HEAD
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


=======
  * Navigate to the architecture directory
  * Run 'terraform init && terraform apply'
>>>>>>> origin
