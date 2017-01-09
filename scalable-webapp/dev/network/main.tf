module "networking" {
  source                = "git::git@github.com:mkokott/digital_provisioning_modules.git//two-tier-vpc"
  resource_default_tags = ["${var.resource_default_tags}"]
}
