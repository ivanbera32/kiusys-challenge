variable "cluster_name" {
  description = "The name of the EKS cluster"
}

variable "node_desired_size" {
  description = "The desired size of the node group"
}

variable "node_max_size" {
  description = "The maximum size of the node group"
}

variable "node_min_size" {
  description = "The minimum size of the node group"
}

variable "db_allocated_storage" {
  description = "The allocated storage size for the database (in gibibytes)"
}

variable "db_storage_type" {
  description = "The storage type of the database (e.g., gp2 for general purpose SSD)"
}

variable "db_engine" {
  description = "The database engine (e.g., mysql, postgresql)"
}

variable "db_engine_version" {
  description = "The version number of the database engine"
}

variable "db_instance_class" {
  description = "The instance type of the database"
}

variable "db_name" {
  description = "The name of the database"
}

variable "db_username" {
  description = "Username for the database administrator"
}

variable "db_password" {
  description = "Password for the database administrator"
}

variable "autoscaling_min_size" {
  description = "Minimum size for the auto scaling group"
  type        = number
}

variable "public_subnets" {
  description = "List of public subnets"
  type        = list(string)
}

variable "availability_zones" {
  description = "List of availability zones"
  type        = list(string)
}

variable "node_instance_type" {
  description = "Instance type for the Kubernetes cluster nodes"
}

variable "kubernetes_version" {
  description = "Version of Kubernetes"
}

variable "multi_az" {
  description = "Specifies if the database should be multi-AZ"
  type        = bool
}

variable "backup_retention_period" {
  description = "Backup retention period in days"
}

variable "db_subnet_group_name" {
  description = "Name of the database subnet group"
}

variable "vpc_security_group_ids" {
  description = "List of VPC security group IDs"
  type        = list(string)
}

variable "iam_roles" {
  description = "List of associated IAM roles"
  type        = list(string)
}

variable "autoscaling_enabled" {
  description = "Specifies if auto scaling is enabled"
  type        = bool
}

variable "autoscaling_max_size" {
  description = "Maximum size for the auto scaling group"
}

variable "private_subnets" {
  description = "List of private subnets"
  type        = list(string)
}

variable "cidr_block" {
  description = "CIDR block for the VPC"
}

variable "subnet_ids" {
  description = "List of subnet IDs for the DB subnet group"
  type        = list(string)
}

