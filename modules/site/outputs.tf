
output "cloudfront_domain" {
  description = "CloudFront distribution domain name."
  value       = aws_cloudfront_distribution.cdn.domain_name
}

output "content_bucket" {
  description = "S3 bucket storing website content."
  value       = aws_s3_bucket.content.bucket
}

output "logs_bucket" {
  description = "S3 bucket storing CloudFront access logs."
  value       = aws_s3_bucket.logs.bucket
}
