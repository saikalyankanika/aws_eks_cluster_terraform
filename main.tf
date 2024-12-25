resource "aws_eks_cluster" "this" {
  name     = var.name
  role_arn = var.role_arn
  version  = var.version

  vpc_config {
    subnet_ids         = var.subnet_ids
    security_group_ids = var.security_group_ids
    endpoint_private_access = var.endpoint_private_access
    endpoint_public_access  = var.endpoint_public_access
    public_access_cidrs     = var.public_access_cidrs
  }

  enabled_cluster_log_types = var.enabled_cluster_log_types

  encryption_config {
    provider {
      key_arn = var.encryption_key_arn
    }
    resources = var.encryption_resources
  }

  kubernetes_network_config {
    service_ipv4_cidr = var.service_ipv4_cidr
    ip_family         = var.ip_family
  }

  tags = var.tags

  depends_on = [
    aws_iam_role_policy_attachment.cluster_AmazonEKSClusterPolicy,
  ]
}
