terraform {
  required_providers {
    terratowns = {
      source  = "local.providers/local/terratowns"
      version = "1.0.0"
    }
  }

  cloud {
    organization = "ExamPro"
    workspaces {
      name = "terra-house-1"
    }
  }
}

provider "terratowns" {
  endpoint  = var.terratowns_endpoint
  user_uuid = var.teacherseat_user_uuid
  token     = var.terratowns_access_token

}

module "home_cs_hosting" {
  source          = "./modules/terrahouse_aws"
  user_uuid       = var.teacherseat_user_uuid
  public_path     = var.cs.public_path
  content_version = var.cs.content_version

}

resource "terratowns_home" "home" {
  name            = "History of Counter-Strike"
  description     = <<DESCRIPTION
  Counter-Strike is a multiplayer tactical first person shooter that started 
  as a mod to Half Life. This is a brief history of how it became one of the 
  biggest FPS games of all time with 1 million+ daily active players.
  DESCRIPTION
  domain_name     = module.home_cs_hosting.domain_name
  town            = "csing"
  content_version = var.cs.content_version
}

module "home_yt_hosting" {
  source          = "./modules/terrahouse_aws"
  user_uuid       = var.teacherseat_user_uuid
  public_path     = var.yt.public_path
  content_version = var.yt.content_version

}

resource "terratowns_home" "home_yt" {
  name            = "Design of YouTube"
  description     = <<DESCRIPTION
  Youtube is one of the most popular and extensible biggest streaming video streaming services and the architecture contains various components that enhance user experience. When it comes down to Youtube services, it is been that commonly used in the daily world with tremendous users so the system design corresponding is likely a bit complex. 
  DESCRIPTION
  domain_name     = module.home_yt_hosting.domain_name
  town            = "yting"
  content_version = var.yt.content_version
}


