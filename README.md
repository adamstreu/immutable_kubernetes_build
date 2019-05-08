# Immutable Kubernetes Cluster Build on AWS
* Kubernetes cluster components are baked into machine Images.
* Images are built with Packer from an Ubuntu base box using an Ansible provisioner.
* Networking and architecture are configured with Terraform and deployed over AWS.
* Creates a highly available Kubernetes cluster using kubeadmn and a flannel overlay network with docker runtime.


# Still to do
* Create an autoscaling group to maintain [3] controller nodes. - not an asg for fun
* Create a metric autoscaler for worker nodes. - not an asg for fun
* Create a failover load balancer to the controller plane. - not an elb for fun.
* Automate build steps below with script or ci/cd pipeline ( with git push automation, etc.)


# Instructions
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
  * Navigate to the architecture directory
  * Run 'terraform init && terraform apply'# Immutable Kubernetes Cluster Build on AWS

