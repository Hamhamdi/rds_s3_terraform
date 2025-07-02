output "s3_bucket_info" {
  description = "S3 bucket information"
  value = {
    name        = module.infrastructure.s3_bucket_name
    arn         = module.infrastructure.s3_bucket_arn
    domain_name = module.infrastructure.s3_bucket_domain_name
  }
}

output "rds_connection_info" {
  description = "RDS connection information"
  value = {
    endpoint      = module.infrastructure.rds_endpoint
    port          = module.infrastructure.rds_port
    database_name = module.infrastructure.rds_database_name
  }
  sensitive = true
}

output "security_group_id" {
  description = "RDS security group ID"
  value       = module.infrastructure.rds_security_group_id
}
