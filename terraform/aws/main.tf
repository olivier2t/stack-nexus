module "nexus" {
  #####################################
  # Do not modify the following lines #
  source   = "./module-nexus"
  project  = var.project
  env      = var.env
  customer = var.customer
  #####################################

  #. extra_tags (optional): {}
  #+ Dict of extra tags to add on aws resources. format { "foo" = "bar" }.
  extra_tags = { "demo" = true }


  #
  # Infra
  #

  #. vpc_id: ''
  #+ Amazon VPC ID where the Nexus Repository will be created
  vpc_id = data.terraform_remote_state.infra.vpc_id

  #. public_subnets: []
  #+ The public subnets for the VPC
  public_subnets = data.terraform_remote_state.infra.public_subnets


  #
  # Nexus Repository infra
  #

  #. instance_type: 't3.micro'
  #+ Instance type for the Nexus Repository
  instance_type = var.instance_type

  #. disk_size: 20
  #+ Disk size for the Nexus Repository (Go)
  disk_size = var.disk_size

  #. ebs_optimized: false
  #+ Whether the Nexus Repository Instance is EBS optimized or not, related to the instance type you choose.
  ebs_optimized = var.ebs_optimized

  # . keypair_public: ((custom_keypair.ssh_pub))
  # + The public SSH key to provision to bastion for external access through SSH
  keypair_public = data.terraform_remote_state.infra.keypair_public
}