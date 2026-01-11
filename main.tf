# no domain needed anymore

# Optional: bootstrap remote Terraform state (run once)
module "state_backend" {
  source = "./modules/state_backend"
  count  = var.create_state_backend ? 1 : 0

  project_name = var.project_name
}

# Main site infrastructure
module "site" {
  source = "./modules/site"

  providers = {
    aws = aws
  }

  project_name = var.project_name
  enable_waf   = var.enable_waf
}
