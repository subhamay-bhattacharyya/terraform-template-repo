## ---------------------------------------------------------------------------------------------------------------------
## Project Name                         - GitOps Minicamp 2024
## Project Description                  - GitOps Minicamp by Derek Morgan and Andrew Brown using GitHub
##                                        Actions and Terraform.
## Modification History:
##   - 1.0.0    Oct 05,2024 - Subhamay  - Initial Version
## ---------------------------------------------------------------------------------------------------------------------

# --- root/main.tf ---

# -- S3 bucket with lifecyclel policy
module "s3" {
  source                              = "./modules/s3"
  aws_region                          = var.aws_region
  s3_bucket_base_name                 = var.s3_bucket_base_name
  kms_key_alias                       = var.kms_key_alias
  transition_days_standard_ia         = var.transition_days_standard_ia
  transition_days_intelligent_tiering = var.transition_days_intelligent_tiering
  transition_days_glacier_ir          = var.transition_days_glacier_ir
  transition_days_glacier             = var.transition_days_glacier
  transition_days_deep_archive        = var.transition_days_deep_archive
  project_name                        = var.project_name
  environment_name                    = var.environment_name
  github_repo                         = var.github_repo
  github_url                          = var.github_url
  github_ref                          = var.github_ref
  github_sha                          = var.github_sha
  github_wf_run_num                   = var.github_wf_run_num
  ci_build                            = var.ci_build
}