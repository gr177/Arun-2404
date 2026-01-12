variable "project_id" {
  description = "The GCP project ID."
  type        = string
}

variable "region" {
  description = "The GCP region for resources."
  type        = string
}

variable "ip_cidr_range" {
  description = "The IP CIDR range for the subnetwork."
  type        = string
}

variable "auto_create_subnetworks" {
  description = "Whether to auto-create subnetworks for the VPC."
  type        = bool
}

variable "vpc_name" {
  description = "The name of the VPC network."
  type        = string
}

variable "vm_name" {
  description = "The name of the VM instance."
  type        = string
}

variable "machine_type" {
  description = "The machine type for the VM instance."
  type        = string
}

variable "zone" {
  description = "The GCP zone for the VM instance."
  type        = string
}

variable "tags" {
  description = "A list of network tags to apply to the instance."
  type        = list(string)
  default     = []
}