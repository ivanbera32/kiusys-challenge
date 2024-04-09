variable "private_subnets" {
  description = "List of CIDRs for private subnets"
  type        = list(string)
}

variable "availability_zones" {
  description = "List of availability zones in which to create subnets"
  type        = list(string)
}

variable "cidr_block" {
  description = "CIDR block for the VPC"
  type        = string
}

variable "public_subnets" {
  description = "List of CIDRs for public subnets"
  type        = list(string)
}

