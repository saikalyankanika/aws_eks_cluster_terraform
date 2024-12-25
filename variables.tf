variable "name" {
  description = "Name of the EKS cluster"
  type        = string
}

variable "role_arn" {
  description = "ARN of the IAM role that provides permissions for the Kubernetes control plane"
  type        = string
}

variable "version" {
  description = "Desired Kubernetes master version"
  type        = string
  default     = "1.21"
}

variable "subnet_ids" {
  description = "List of subnet IDs"
  type        = list(string)
}

variable "security_group_ids" {
  description = "List of security group IDs"
  type        = list(string)
  default     = []
}

variable "endpoint_private_access" {
  description = "Whether the Amazon EKS private API server endpoint is enabled"
  type        = bool
  default     = false
}

variable "endpoint_public_access" {
  description = "Whether the Amazon EKS public API server endpoint is enabled"
  type        = bool
  default     = true
}

variable "public_access_cidrs" {
  description = "List of CIDR blocks that can access the Amazon EKS public API server endpoint"
  type        = list(string)
  default     = ["0.0.0.0/0"]
}

variable "enabled_cluster_log_types" {
  description = "List of the desired control plane logging to enable"
  type        = list(string)
  default     = []
}

variable "encryption_key_arn" {
  description = "ARN of the Key Management Service (KMS) customer master key (CMK)"
  type        = string
  default     = null
}

variable "encryption_resources" {
  description = "List of resources to be encrypted"
  type        = list(string)
  default     = ["secrets"]
}

variable "service_ipv4_cidr" {
  description = "The CIDR block to assign Kubernetes pod and service IP addresses from"
  type        = string
  default     = null
}

variable "ip_family" {
  description = "The IP family used to assign Kubernetes pod and service addresses"
  type        = string
  default     = "ipv4"
}

variable "tags" {
  description = "A map of tags to assign to the resource"
  type        = map(string)
  default     = {}
}
