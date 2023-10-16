output "bucket_name" {
  description = "Bucket name for our static website hosting"
  value       = module.home_cs_hosting.bucket_name

}

output "s3_website_endpoint" {
  description = "s3 static website hosting endpoint"
  value       = module.home_cs_hosting.website_endpoint

}

output "cloudfront_url" {
  description = "The Cloudfront Distribution domain name"
  value       = module.home_cs_hosting.domain_name

}
