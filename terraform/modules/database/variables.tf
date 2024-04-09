variable "db_allocated_storage" {
  description = "The allocated storage size for the database (in gibibytes)"
  type        = number
}

variable "db_storage_type" {
  description = "The storage type of the database (e.g., gp2 for general purpose SSD)"
  type        = string
}

variable "db_engine" {
  description = "The database engine (e.g., mysql, postgresql)"
  type        = string
}

variable "db_engine_version" {
  description = "The version number of the database engine"
  type        = string
}

variable "db_instance_class" {
  description = "The instance type of the database"
  type        = string
}

variable "db_name" {
  description = "The name of the database"
  type        = string
}

variable "db_username" {
  description = "Username for the database administrator"
  type        = string
}

variable "db_password" {
  description = "Password for the database administrator"
  type        = string
}

variable "vpc_id" {
  description = "The ID of the VPC"
  type        = string
}

variable "multi_az" {
  description = "Specifies if the RDS instance is multi-AZ"
  type        = bool
}

variable "backup_retention_period" {
  description = "The number of days to retain backups for"
  type        = number
}

variable "db_subnet_group_name" {
  description = "The name of the DB subnet group"
  type        = string
}

variable "subnet_ids" {
  description = "List of subnet IDs for the DB subnet group"
  type        = list(string)
}

