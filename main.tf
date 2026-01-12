terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 5.0"
    }
  }
}

module "vpc" {
  source                = "./modules/vpc"
  project_id            = var.project_id
  vpc_name              = var.vpc_name
  auto_create_subnetworks = var.auto_create_subnetworks
  ip_cidr_range         = var.ip_cidr_range
  region                = var.region
}

module "vm" {
  source       = "./modules/vm"
  project_id   = var.project_id
  vm_name      = var.vm_name
  machine_type = var.machine_type
  zone         = var.zone
  subnet_id    = module.vpc.subnet_id
  tags         = var.tags
}