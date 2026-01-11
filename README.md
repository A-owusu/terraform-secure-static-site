# Terraform Secure Static Site (AWS)

A production-style static website built with Terraform:

- This deployment uses CloudFront’s default domain (`*.cloudfront.net`) to avoid domain costs.
- HTTPS is still enabled via CloudFront’s default certificate.
- A custom domain can be added later with ACM + Route53.

- **S3 (private)** bucket for site content (no public access)
- **CloudFront** CDN in front of S3 using **Origin Access Control (OAC)**
- Optional **AWS WAFv2** (AWS Managed Rules: Common Rule Set)
- **CloudFront access logs** to a separate S3 bucket
- Optional bootstrap module: **remote state** (S3 + DynamoDB locking)

## Architecture (high level)

User → CloudFront (HTTPS) → S3 (private)
- S3 is not public; CloudFront is the only reader via OAC + bucket policy.
- TLS is enforced at CloudFront (minimum TLS v1.2_2021).

## Prerequisites

- Terraform **>= 1.5**
- AWS CLI authenticated (`aws configure` or env vars)
- A **public Route53 hosted zone** for your domain (e.g. `example.com`)

## Setup

## Configuration

## 1) Create a tfvars file (do not commit it)

Create `terraform.tfvars`:

```hcl
aws_region           = "eu-west-2"
project_name         = "tf-secure-static-site"
enable_waf           = true
create_state_backend = false
