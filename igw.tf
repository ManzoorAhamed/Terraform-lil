resource "aws_internet_gateway" "igw" {
	vpc_id = "${aws_vpc.environment-example-2.id}"

	tags {
		Name = "TF-IGW"
	}
}
