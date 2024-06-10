# More on: https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket#attribute-reference

output "bucket_name" {
  description = "The name of the main S3 bucket."
  value       = aws_s3_bucket.main_bucket.bucket
}

output "bucket_arn" {
  description = "The ARN of the main S3 bucket."
  value       = aws_s3_bucket.main_bucket.arn
}

output "zone_id" {
  description = "The hosted zone ID of the main S3 bucket."
  value       = aws_s3_bucket.main_bucket.hosted_zone_id
}

output "regional_domain" {
  description = "The regional domain name of the main S3 bucket."
  value       = aws_s3_bucket.main_bucket.bucket_regional_domain_name
}

output "base_domain" {
  description = "The base domain name of the main S3 bucket."
  value       = aws_s3_bucket.main_bucket.bucket_domain_name
}

output "website_endpoint" {
  description = "The main S3 bucket website endpoint."
  value       = aws_s3_bucket_website_configuration.bucket_statics[0].website_endpoint
}