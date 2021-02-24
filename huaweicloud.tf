# Configure the HuaweiCloud Provider
provider "huaweicloud" {
  region      = "cn-north-1"
  access_key  = "LDM63VELIC8JCVUOOKOQ"
  secret_key  = "N5loVDAiZXsj542X2gkabHCjSFr9gF16asJYj1l3"
}

# Create a VPC
resource "huaweicloud_vpc" "example" {
  name = "my_vpc"
  cidr = "192.168.0.0/16"

  tags = {
    Name = "terraform-example"
  }
}
