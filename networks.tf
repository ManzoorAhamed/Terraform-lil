resource "aws_vpc" "environment-example-2" {
	cidr_block = "10.0.0.0/16"
	enable_dns_hostnames = "true"
	enable_dns_support = "true"
	tags {
		Name = "Terrafom-vpc-2"
	}
}
