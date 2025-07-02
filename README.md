# Terraform AWS Infrastructure Project

This project creates AWS infrastructure including RDS (MySQL) and S3 resources using Terraform modules.

## Project Structure
```
terraform-aws-infrastructure/
├── main.tf                    # Root configuration
├── variables.tf               # Root variables
├── outputs.tf                 # Root outputs
├── terraform.tfvars           # Your specific values
├── terraform.tfvars.example   # Template for variables
└── modules/
    └── aws-infrastructure/
        ├── main.tf            # Module resources
        ├── variables.tf       # Module variables
        └── outputs.tf         # Module outputs
```

## Quick Start

1. **Configure AWS CLI** (make sure you have AWS credentials configured):
   ```bash
   aws configure
   ```

2. **Update variables** in `terraform.tfvars`:
   ```bash
   nano terraform.tfvars
   ```
   **⚠️ IMPORTANT: Change the default password!**

3. **Initialize Terraform**:
   ```bash
   terraform init
   ```

4. **Plan the deployment**:
   ```bash
   terraform plan
   ```

5. **Apply the configuration**:
   ```bash
   terraform apply
   ```

6. **Clean up when done**:
   ```bash
   terraform destroy
   ```

## What Gets Created

### S3 Resources:
- S3 bucket with unique name
- Versioning enabled
- Public access blocked
- Server-side encryption enabled

### RDS Resources:
- MySQL 8.0 database instance (db.t3.micro)
- Security group with VPC access
- Subnet group using default VPC
- Automated backups enabled
- Encryption at rest enabled

## Customization

Edit `terraform.tfvars` to customize:
- `aws_region` - AWS region for deployment
- `environment` - Environment name (dev/staging/prod)
- `project_name` - Project name for resource naming
- `db_password` - Database password (CHANGE THIS!)

## Security Notes

- Database is not publicly accessible
- S3 bucket blocks public access
- All resources are encrypted
- Security groups restrict access to VPC only

## Cost Considerations

This configuration uses:
- `db.t3.micro` RDS instance (Free Tier eligible)
- Standard S3 storage
- Default backup retention (adjust for production)

Remember to run `terraform destroy` when done practicing to avoid charges!
