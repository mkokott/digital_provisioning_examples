#read only data
data "terraform_remote_state" "network" {
  backend = "s3"

  config {
    bucket = "digital-provisioning-d93ae214a55f4238b0db5d6e53510081"
    key    = "digital_provisioning_example/scalable-webapp/dev/network/terraform.tfstate"
    region = "eu-west-1"
  }
}

module "webservers" {
  source = "git::git@github.com:mkokott/digital_provisioning_modules.git//loadbalanced-webapp"

  ec2_ami_id            = "${lookup(var.ec2_amis, var.aws_region)}"
  ec2_instance_type     = "${var.ec2_instance_type}"
  region                = "${var.aws_region}"
  subnet_ids            = ["${data.terraform_remote_state.network.lbwa_subnet_ids}"]
  resource_default_tags = ["${var.resource_default_tags}"]
  vpc_id                = "${data.terraform_remote_state.network.lbwa_vpc_id}"
}
