# VPC module variables
private_subnets = ["10.0.3.0/24", "10.0.4.0/24"]
availability_zones = ["us-west-2a"]
cidr_block = "10.0.0.0/16"
public_subnets = ["10.0.1.0/24", "10.0.2.0/24"]
subnet_ids = ["subnet-123abc", "subnet-456def"]


# Kubernetes module variables
cluster_name = "kiusys-cluster"
node_desired_size = 2
node_max_size = 3
node_min_size = 1
node_instance_type = "t3.medium"
kubernetes_version = "1.21"

# Database module variables
db_allocated_storage = 20
db_storage_type = "gp2"
db_engine = "mysql"
db_engine_version = "5.7"
db_instance_class = "db.t2.micro"
db_name = "kiusysdb"
db_username = "admin"
db_password = "strongpassword123"
multi_az = false
backup_retention_period = 7
db_subnet_group_name = "kiusys-db-subnet-group"

# Security
vpc_security_group_ids = ["sg-12345678"]
iam_roles = ["arn:aws:iam::123456789012:role/SampleRole"]

# Autoescaling
autoscaling_enabled = true
autoscaling_min_size = 1
autoscaling_max_size = 5


