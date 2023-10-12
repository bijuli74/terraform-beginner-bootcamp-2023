terraform {
  # required_providers {
  #   random = {
  #     source  = "hashicorp/random"
  #     version = "3.5.1"
  #   }
  #   aws = {
  #     source  = "hashicorp/aws"
  #     version = "5.16.2"
  #   }
  # }
}


module "terrahouse_aws" {
  source              = "./modules/terrahouse_aws"
  user_uuid           = var.user_uuid
  bucket_name         = var.bucket_name
  index_html_filepath = var.index_html_filepath
  error_html_filepath = var.error_html_filepath
  content_version     = var.content_version
  assets_path         = var.assets_path
}
