locals {
  fqdn = "${var.subdomain}.${var.domain_name}"
}

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
    aws      = aws
    aws.use1 = aws.use1
  }

  project_name = var.project_name
  domain_name  = var.domain_name
  fqdn         = local.fqdn
  enable_waf   = var.enable_waf
}
