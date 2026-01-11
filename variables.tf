variable "aws_region" {
  type        = string
  description = "AWS region for regional resources (S3, etc.)."
  default     = "eu-west-2"
}

variable "project_name" {
  type        = string
  description = "Name prefix for all resources."
  default     = "tf-secure-static-site"
}

variable "domain_name" {
  type        = string
  description = "Apex domain name that already exists in Route53 (e.g. example.com)."
}

variable "subdomain" {
  type        = string
  description = "Subdomain for the site (e.g. www)."
  default     = "www"
}

variable "enable_waf" {
  type        = bool
  description = "Enable AWS WAF managed rules on CloudFront."
  default     = true
}

variable "create_state_backend" {
  type        = bool
  description = "Bootstrap S3 + DynamoDB for remote Terraform state."
  default     = false
}
