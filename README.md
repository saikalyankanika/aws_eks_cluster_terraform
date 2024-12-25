# aws_eks_cluster_terraform
creation of eks cluster in aws using terraform

## How to use this module 
```
module "eks_cluster" {
  source = "./eks_cluster"
  name   = "my-eks-cluster"
  role_arn = "arn:aws:iam::123456789012:role/eks-cluster-role"
  version  = "1.21"
  subnet_ids = ["subnet-12345678", "subnet-87654321"]
  security_group_ids = ["sg-12345678"]
  endpoint_private_access = true
  endpoint_public_access  = true
  public_access_cidrs     = ["0.0.0.0/0"]
  enabled_cluster_log_types = ["api", "audit", "authenticator"]
  encryption_key_arn = "arn:aws:kms:us-west-2:123456789012:key/abcd1234-5678-90ab-cdef-1234567890ab"
  encryption_resources = ["secrets"]
  service_ipv4_cidr = "10.100.0.0/16"
  ip_family         = "ipv4"
  tags = { Name = "my-eks-cluster" }
}
```
