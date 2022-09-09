variable "cluster_name" {
  description = "Cluster name"
  type        = string
}

variable "role_arn" {
  description = "Role arn"
  type        = string
}

variable "region" {
  description = "Role arn"
  type        = string
}

variable "port" {
  description = "Port name to connect (for ssh tunnel)"
  type        = string
}
