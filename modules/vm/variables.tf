variable "project_id" {

  description = "The GCP project ID."

  type        = string

}
 
variable "vm_name" {

    description = "The name of the VM instance."

    type = string

}

variable "zone" {

    description = "The GCP zone for the VM instance."

    type = string

}

variable "machine_type" {

    description = "The machine type for the VM instance."

     type = string

}

variable "subnet_id" {

    description = "The self-link of the subnetwork to attach the VM to."

     type = string

}
 
variable "tags" {

  description = "A list of network tags to apply to the instance."

  type        = list(string)

  default     = []

}
 
variable "boot_image" {

  description = "The boot image for the VM instance."

  type        = string

  default     = "debian-cloud/debian-11"

}
 
