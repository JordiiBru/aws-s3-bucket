# More on: https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket#attribute-reference

output "bucket_name" {
  value = aws_s3_bucket.main_bucket.bucket
}

output "bucket_arn" {
  value = aws_s3_bucket.main_bucket.arn
}

output "zone_id" {
  value = aws_s3_bucket.main_bucket.hosted_zone_id
}

output "regional_domain" {
  value = aws_s3_bucket.main_bucket.bucket_regional_domain_name
}

output "base_domain" {
  value = aws_s3_bucket.main_bucket.bucket_domain_name
}