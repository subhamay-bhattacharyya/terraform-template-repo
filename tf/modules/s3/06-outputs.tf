## ---------------------------------------------------------------------------------------------------------------------
## Project Name                         - GitOps Minicamp 2024
## Project Description                  - GitOps Minicamp by Derek Morgan and Andrew Brown using GitHub
##                                        Actions and Terraform.
## Modification History:
##   - 1.0.0    Oct 05,2024 - Subhamay  - Initial Version
## ---------------------------------------------------------------------------------------------------------------------

# --- se_bucket/outputs.tf ---

output "outputs" {
  value = {
    bucket_name       = aws_s3_bucket.s3_bucket.id
    bucket_arn        = aws_s3_bucket.s3_bucket.arn
    region            = aws_s3_bucket.s3_bucket.region
    encryption_rule   = aws_s3_bucket_server_side_encryption_configuration.s3_bucket_sse.rule
    life_cycle_config = aws_s3_bucket_lifecycle_configuration.s3_bucket_lifecycle_config.rule
  }
}