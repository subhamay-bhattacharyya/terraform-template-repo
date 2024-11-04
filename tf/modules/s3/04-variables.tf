## ---------------------------------------------------------------------------------------------------------------------
## Project Name                         - GitOps Minicamp 2024
## Project Description                  - GitOps Minicamp by Derek Morgan and Andrew Brown using GitHub
##                                        Actions and Terraform.
## Modification History:
##   - 1.0.0    Oct 05,2024 - Subhamay  - Initial Version
## ---------------------------------------------------------------------------------------------------------------------

# --- s3/variables.tf ---

variable "aws_region" {
  type    = string
  default = "us-east-1"
}
######################################## S3 Bucket #################################################
variable "s3_bucket_base_name" {
  type        = string
  description = "Base name of the S3 bucket"
}
######################################## KMS Key ###################################################
variable "kms_key_alias" {
  description = "KMS Key alias"
  type        = string
}
######################################## S3 Storage Class Transition Configuration #################
variable "transition_days_standard_ia" {
  description = "Number of days after which the object will be transitioned to Standard Infrequest Access storage class"
  type        = number
}
variable "transition_days_intelligent_tiering" {
  description = "Number of days after which the object will be transitioned to Intelligent Tiering storage class"
  type        = number
}
variable "transition_days_glacier_ir" {
  description = "Number of days after which the object will be transitioned to Glacier Instant retrieval storage class"
  type        = number
}
variable "transition_days_glacier" {
  description = "Number of days after which the object will be transitioned to Glacier storage class"
  type        = number
}
variable "transition_days_deep_archive" {
  description = "Number of days after which the object will be transitioned to Deep Archive storage class"
  type        = number
}
######################################## Project Name ##############################################
variable "project_name" {
  description = "The name of the project"
  type        = string
}
######################################## Environment Name ##########################################
variable "environment_name" {
  type        = string
  description = <<EOT
  (Optional) The environment in which to deploy our resources to.

  Options:
  - devl : Development
  - test: Test
  - prod: Production

  Default: devl
  EOT
  default     = "devl"

  validation {
    condition     = can(regex("^devl$|^test$|^prod$", var.environment_name))
    error_message = "Err: environment is not valid."
  }
}
######################################## GitHub Variables ##########################################
variable "github_repo" {
  type        = string
  description = "GitHub Repository Name"
  default     = ""
}
variable "github_url" {
  type        = string
  description = "GitHub Repository URL"
  default     = ""
}
variable "github_ref" {
  type        = string
  description = "GitHub Ref"
  default     = ""
}
variable "github_sha" {
  type        = string
  description = "GitHub SHA"
  default     = ""
}
variable "github_wf_run_num" {
  type        = string
  description = "GitHub Workflow Run Number"
  default     = ""
}
variable "ci_build" {
  type        = string
  description = "Ci Build String"
  default     = ""
}