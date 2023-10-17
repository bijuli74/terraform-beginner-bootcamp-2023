terraform {
  required_providers {
    terratowns = {
      source  = "local.providers/local/terratowns"
      version = "1.0.0"
    }
  }

  cloud {
    organization = "bijuli"
    workspaces {
      name = "terra-house-sb"
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

resource "terratowns_home" "home_cs" {
  name            = "History of Counter-Strike"
  description     = <<DESCRIPTION
  Counter-Strike is a multiplayer tactical first person shooter that started 
  as a mod to Half Life. This is a brief history of how it became one of the 
  biggest FPS games of all time with 1 million+ daily active players.
  DESCRIPTION
  domain_name     = module.home_cs_hosting.domain_name
  town            = "gamers-grotto"
  content_version = var.cs.content_version
}

module "home_forest_hosting" {
  source          = "./modules/terrahouse_aws"
  user_uuid       = var.teacherseat_user_uuid
  public_path     = var.forest.public_path
  content_version = var.forest.content_version

}

resource "terratowns_home" "home_forest" {
  name            = "Design of Enchanted Forest"
  description     = <<DESCRIPTION
  Want to see cool pictures of pristine, mystical forest. Click Here !!!
  DESCRIPTION
  domain_name     = module.home_forest_hosting.domain_name
  town            = "the-nomad-pad"
  content_version = var.forest.content_version
}


