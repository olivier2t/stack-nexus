# Cycloid variables
variable "env" {}
variable "project" {}
variable "customer" {}

# AWS variables
variable "aws_access_key" {}
variable "aws_secret_key" {}
variable "aws_region" {}
variable "terraform_storage_bucket_name" {}
variable "keypair_public" {}

#
# Nexus Repository infra
#
variable "instance_type" {}
variable "disk_size" {}
variable "ebs_optimized" {}
