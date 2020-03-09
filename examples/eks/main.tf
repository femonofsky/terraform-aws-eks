provider "aws" {
  region  = "us-east-1"
  version = "2.49.0"
}


module "eks" {
  source = "../../."

  cluster_name       = var.cluster_name
  cidr_block         = var.cidr_block
  availability_zones = ["us-east-1a", "us-east-1b", "us-east-1c"]

  # So we can access the k8s API from CI/dev
  endpoint_public_access = true
}
