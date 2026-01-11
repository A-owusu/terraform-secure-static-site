variable "project_name" {
  type        = string
  description = "Name prefix for site resources."
}

variable "domain_name" {
  type        = string
  description = "Apex domain name (e.g. example.com)."
}

variable "fqdn" {
  type        = string
  description = "Fully qualified domain name for the site (e.g. www.example.com)."
}

variable "enable_waf" {
  type        = bool
  description = "Whether to enable AWS WAF on the CloudFront distribution."
}
