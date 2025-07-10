output "eks_cluster_name" {
  description = "The name of the EKS cluster"
  value       = var.cluster_name
}

output "aws_region" {
  description = "The AWS region in which resources are deployed"
  value       = var.aws_region
}

