output "site_url" {
  description = "Public URL of the website."
  value       = "https://${module.site.fqdn}"
}

output "cloudfront_domain" {
  description = "CloudFront distribution domain name."
  value       = module.site.cloudfront_domain
}

output "content_bucket" {
  description = "S3 bucket storing website content."
  value       = module.site.content_bucket
}
