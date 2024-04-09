variable "cluster_name" {
  description = "The name of the EKS cluster"
  type        = string
}

variable "node_desired_size" {
  description = "The desired size of the node group"
  type        = number
}

variable "node_max_size" {
  description = "The maximum size of the node group"
  type        = number
}

variable "node_min_size" {
  description = "The minimum size of the node group"
  type        = number
}

variable "vpc_id" {
  description = "The ID of the VPC where Kubernetes cluster resources will be deployed"
  type        = string
}

variable "node_instance_type" {
  description = "Instance type of the Kubernetes worker nodes"
  type        = string
}

variable "kubernetes_version" {
  description = "Version of Kubernetes to deploy"
  type        = string
}

variable "subnet_ids" {
  description = "List of subnet IDs for EKS"
  type        = list(string)
}

