resource "aws_db_instance" "default" {
  allocated_storage    = var.db_allocated_storage
  storage_type         = var.db_storage_type
  engine               = var.db_engine
  engine_version       = var.db_engine_version
  instance_class       = var.db_instance_class
  db_name                 = var.db_name
  username             = var.db_username
  password             = var.db_password
  parameter_group_name = "default.mysql5.7"
  skip_final_snapshot  = true
  publicly_accessible  = true
  vpc_security_group_ids = [aws_security_group.db.id]
  db_subnet_group_name    = aws_db_subnet_group.default.name

  tags = {
    Name = var.db_name
  }
}

resource "aws_security_group" "db" {
  name        = "my-db-security-group"
  description = "Security group for RDS DB instance"
  vpc_id      = var.vpc_id

  tags = {
    Name = "my-db-security-group"
  }
}

resource "aws_db_subnet_group" "default" {
  name        = var.db_subnet_group_name
  subnet_ids  = var.subnet_ids

  tags = {
    Name = var.db_subnet_group_name
  }
}

