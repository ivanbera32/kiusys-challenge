module "vpc" {
  source = "../modules/vpc"
  private_subnets    = var.private_subnets
  availability_zones = var.availability_zones
  cidr_block         = var.cidr_block
  public_subnets     = var.public_subnets
}

module "kubernetes" {
  source               = "../modules/kubernetes"
  vpc_id               = module.vpc.vpc_id
  subnet_ids  	       = module.vpc.public_subnet_ids 
  cluster_name         = var.cluster_name
  node_desired_size    = var.node_desired_size
  node_max_size        = var.node_max_size
  node_min_size        = var.node_min_size
  node_instance_type   = var.node_instance_type
  kubernetes_version   = var.kubernetes_version
}

module "database" {
  source                  = "../modules/database"
  vpc_id                  = module.vpc.vpc_id
  db_allocated_storage    = var.db_allocated_storage
  db_storage_type         = var.db_storage_type
  db_engine               = var.db_engine
  db_engine_version       = var.db_engine_version
  db_instance_class       = var.db_instance_class
  db_name                 = var.db_name
  db_username             = var.db_username
  db_password             = var.db_password
  multi_az                = var.multi_az
  backup_retention_period = var.backup_retention_period
  db_subnet_group_name    = var.db_subnet_group_name
  subnet_ids          = var.subnet_ids 
}

