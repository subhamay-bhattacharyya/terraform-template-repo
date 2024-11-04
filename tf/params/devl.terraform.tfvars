## ---------------------------------------------------------------------------------------------------------------------
## Project Name                         - GitOps Minicamp 2024
## Project Description                  - GitOps Minicamp by Derek Morgan and Andrew Brown using GitHub
##                                        Actions and Terraform.
## Modification History:
##   - 1.0.0    Oct 05,2024 - Subhamay  - Initial Version
## ---------------------------------------------------------------------------------------------------------------------

######################################## Project Name ##############################################
project_name                        = "minicamp"
######################################## S3 Bucket #################################################
s3_bucket_base_name                 = "life-cycle-demo"
######################################## KMS Key ###################################################
kms_key_alias                       = "alias/SB-KMS"
######################################## S3 Storage Class Transition Configuration #################
transition_days_standard_ia         = 30
transition_days_intelligent_tiering = 60
transition_days_glacier_ir          = 120
transition_days_glacier             = 210
transition_days_deep_archive        = 365
