variable "project_name" {
  type        = string
  description = "Name prefix for site resources."
}

variable "enable_waf" {
  type        = bool
  description = "Whether to enable AWS WAF on the CloudFront distribution."
}
