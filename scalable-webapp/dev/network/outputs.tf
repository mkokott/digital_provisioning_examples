output "lbwa_vpc_id" {
  value = "${module.networking.vpc_id}"
}

output "lbwa_subnet_ids" {
  value = ["${module.networking.public_subnet_ids}"]
}
