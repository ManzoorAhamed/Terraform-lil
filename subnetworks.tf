resource "aws_subnet" "subnet1-pub" {
	cidr_block = "10.0.0.0/28"
	vpc_id = "${aws_vpc.environment-example-2.id}"
	availability_zone = "us-west-2a"
	
	tags {
		Name = "subnet1-pub"
	}
}

resource "aws_subnet" "subnet2-pub" {
	cidr_block = "10.0.0.16/28"
	vpc_id = "${aws_vpc.environment-example-2.id}"
	availability_zone = "us-west-2b"

	tags {
                Name = "subnet2-pub"
        }
}

resource "aws_subnet" "subnet3-prv" {
	cidr_block = "10.0.0.32/28"
	vpc_id = "${aws_vpc.environment-example-2.id}"
        availability_zone = "us-west-2c"

	tags {
                Name = "subnet3-prv"
        }
}

resource "aws_subnet" "subnet4-prv" {
        cidr_block = "10.0.0.48/28"
        vpc_id = "${aws_vpc.environment-example-2.id}"
        availability_zone = "us-west-2c"

	tags {
                Name = "subnet4-prv"
        }
}
