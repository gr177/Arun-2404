variable "vpc_name" {
  description = "The name of the VPC network."
  type = string
}

variable "region" {
  description = "The GCP region for resources."
  type = string
}

variable "auto_create_subnetworks" {
  description = "Whether to auto-create subnetworks for the VPC."
  type        = bool
}

variable "ip_cidr_range" {
  description = "The IP CIDR range for the subnetwork."
  type        = string
}

variable "project_id" {
  description = "The GCP project ID."
  type        = string
}