variable "project_id" {
  description = "The Google Cloud project ID"
  type        = string
}

variable "region" {
  description = "The region for clusters"
  type        = string
}

variable "zones" {
  description = "The zones for clusters"
  type        = list
}

variable "cluster_name" {
  description = "The GKE cluster name"
  type        = string
}

variable "tenant_names" {
  description = "Set of named tenants to be created in the cluster. Each tenant gets a dedicated nodepool, service accounts etc"
  type = list
}

variable "master_ipv4_cidr_block" {
  description = "The IP range in CIDR notation to use for the hosted master network"
  default = "10.0.0.0/28"
}

variable "cluster_default_pool_machine_type" {
  description = "The machine type for a default node pool"
  type        = string
  default     = "e2-standard-4"
}

variable "cluster_default_pool_min_nodes" {
  description = "The min number of nodes in the default node pool"
  default     = 3
}

variable "cluster_default_pool_max_nodes" {
  description = "The min number of nodes in the default node pool"
  default     = 5
}

variable "cluster_tenant_pool_machine_type" {
  description = "The machine type for a tenant node pool"
  type        = string
  default     = "e2-standard-4"
}

variable "cluster_tenant_pool_min_nodes" {
  description = "The min number of nodes in the tenant node pool"
  default     = 2
}

variable "cluster_tenant_pool_max_nodes" {
  description = "The min number of nodes in the tenant node pool"
  default     = 5
}

variable "cluster_secrets_keyname" {
  description = "The name of the Cloud KMS key used to encrypt cluster secrets"
  type        = string
  default     = "clusterSecretsKey"
}

variable "acm_version" {
  description = "ACM version"
  default = "1.9.0"
}

variable "acm_repo_location" {
  description = "The location of the git repo ACM will sync to"
}

variable "acm_branch" {
  description = "The git branch ACM will sync to"
}

variable "acm_dir" {
  description = "The directory in git ACM will sync to"
}

variable "acm_secret_type" {
  description = "git authentication secret type"
  default     = "none"
}

variable "acm_create_ssh_key" {
  description = "Controls whether a key will be generated for Git authentication"
  default     = false
}

variable "asm_version" {
  description = "ASM version"
  default = "1.10"
}

variable "asm_revision_label" {
  description = "ASM revision label"
  default = "asm-110"
}
