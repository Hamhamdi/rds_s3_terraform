output "s3_bucket_name" {
  description = "Name of the created S3 bucket"
  value       = aws_s3_bucket.main_bucket.bucket
}

output "s3_bucket_arn" {
  description = "ARN of the created S3 bucket"
  value       = aws_s3_bucket.main_bucket.arn
}

output "s3_bucket_domain_name" {
  description = "Domain name of the S3 bucket"
  value       = aws_s3_bucket.main_bucket.bucket_domain_name
}

output "rds_endpoint" {
  description = "RDS instance connection endpoint"
  value       = aws_db_instance.main_database.endpoint
}

output "rds_port" {
  description = "RDS instance port"
  value       = aws_db_instance.main_database.port
}

output "rds_database_name" {
  description = "Name of the created database"
  value       = aws_db_instance.main_database.db_name
}

output "rds_username" {
  description = "Database master username"
  value       = aws_db_instance.main_database.username
  sensitive   = true
}

output "rds_security_group_id" {
  description = "ID of the RDS security group"
  value       = aws_security_group.rds_sg.id
}
