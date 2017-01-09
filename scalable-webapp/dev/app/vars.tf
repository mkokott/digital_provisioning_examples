variable aws_region {
  description = "id of aws region to create all resources"
  type        = "string"
  default     = "ap-southeast-2"
}

variable ec2_amis {
  description = "mapping containing the ami ids for each aws region"
  type        = "map"

  default = {
    ap-south-1     = "ami-10b5c17f"
    eu-west-2      = "ami-02111b66"
    eu-west-1      = "ami-1ca8e36f"
    ap-northeast-2 = "ami-3c30e452"
    ap-northeast-1 = "ami-8f16b5ee"
    sa-east-1      = "ami-66b62a0a"
    ca-central-1   = "ami-13883a77"
    ap-southeast-1 = "ami-7e54f51d"
    ap-southeast-2 = "ami-a1724ec2"
    eu-central-1   = "ami-20669e4f"
    us-east-1      = "ami-c82e76df"
    us-east-2      = "ami-1d580278"
    us-west-1      = "ami-bdeea5dd"
    us-west-2      = "ami-a2d771c2"
  }
}

variable ec2_instance_type {
  description = "the aws instance type for ec2 instances created by this template"
  type        = "string"
  default     = "t2.micro"
}

variable resource_default_tags {
  description = "map: tags that will be set on all resources that support tagging"
  type        = "map"

  default = {
    project = "digital_provisioning_poc"
    owner   = "markus.kokott@capgemini.com"
    stage   = "dev"
  }
}
