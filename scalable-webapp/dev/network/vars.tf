variable resource_default_tags {
  description = "map containing tags that will be set on all resources that support tagging"
  type        = "map"

  default = {
    project = "digital_provisioning_poc"
    owner   = "markus.kokott@capgemini.com"
    stage   = "dev"
  }
}
