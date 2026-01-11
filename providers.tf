provider "aws" {
  region = var.aws_region
}

# CloudFront certificates must be created in us-east-1
provider "aws" {
  alias  = "use1"
  region = "us-east-1"
}
