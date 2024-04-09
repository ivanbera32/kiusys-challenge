output "cluster_id" {
  value = aws_eks_cluster.cluster.id
}

output "cluster_endpoint" {
  value = aws_eks_cluster.cluster.endpoint
}

output "cluster_security_group_id" {
  value = aws_eks_cluster.cluster.vpc_config[0].security_group_ids
}

output "node_group_id" {
  value = aws_eks_node_group.node_group.id
}

