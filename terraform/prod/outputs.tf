output "vpc_id" {
  value = module.vpc.vpc_id
}

output "public_subnet_id" {
  value = module.vpc.public_subnet_ids
}

output "eks_cluster_id" {
  value = module.kubernetes.cluster_id
}

output "db_instance_endpoint" {
  value = module.database.db_instance_endpoint
}

