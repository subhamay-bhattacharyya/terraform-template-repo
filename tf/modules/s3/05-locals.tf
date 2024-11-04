## ---------------------------------------------------------------------------------------------------------------------
## Project Name                         - GitOps Minicamp 2024
## Project Description                  - GitOps Minicamp by Derek Morgan and Andrew Brown using GitHub
##                                        Actions and Terraform.
## Modification History:
##   - 1.0.0    Oct 05,2024 - Subhamay  - Initial Version
## ---------------------------------------------------------------------------------------------------------------------

# --- s3/locals.tf ---

########################################  Local Variables ####################################
locals {
  tags = tomap({
    Environment       = var.environment_name
    ProjectName       = var.project_name
    GitHubRepository  = var.github_repo
    GitHubRef         = var.github_ref
    GitHubURL         = var.github_url
    GitHubWFRunNumber = var.github_wf_run_num
    GitHubSHA         = var.github_sha
  })
}

locals {
  s3_bucket_base_name = "${var.project_name}-${var.s3_bucket_base_name}-${var.environment_name}-${data.aws_region.current.name}${var.ci_build}"
}