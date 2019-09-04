variable "bootstrap_node_public_ip" {
  description = "the bootstrap nodes public ip address"
  type        = string
}

variable "bootstrap_node_private_ip" {
  description = "the bootstrap nodes private ip address"
  type        = string
}

variable "backend_public_ips" {
  description = "list of the backend public ip addresses"
  type        = list(string)
}

variable "frontend_public_ips" {
  description = "list of the frontend public ip addresses"
  type        = list(string)
}

variable "frontend_private_ips" {
  description = "list of the frontend private ip addresses"
  type        = list(string)
}

variable "frontend_node_count" {
  description = "number of frontend nodes being created"
  type        = number
}

variable "ssh_user_name" {
  description = "user name for ssh access to the cluster"
  type        = string
}

variable "ssh_user_private_key_path" {
  description = "path for the ssh key used to access the cluster"
  type        = string
}

variable "postgresql_superuser_password" {
  description = "a password string"
  type        = string
}

variable "postgresql_replication_password" {
  description = "password string"
  type        = string
}

variable "etcd_initial_cluster_token" {
  description = "user created token string"
  type        = string
}

variable "elasticsearch_cluster_name" {
  description = "user created name for the elasticsearch cluster"
  type        = string
}

variable "extra_frontend_config" {
  description = "Chef Backend will auto generate the configuration for the frontends, this variable is to add extra configuration to that configuration"
  type        = string
  default     = ""
}

variable "force_frontend_chef_run" {
  description = "set to anything other than default to force a rerun of chef on all the cluster nodes"
  type        = string
  default     = "default"
}

variable "timeout" {
  description = "The timeout to wait for the connection to become available. Should be provided as a string like 30s or 5m, Defaults to 5 minutes"
  type        = string
  default     = "default"
}
