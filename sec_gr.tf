resource "aws_security_group" "sg1" {
	name = "TF-sg1"
	vpc_id = "${aws_vpc.environment-example-2.id}"

	ingress {
		from_port = "22"
		to_port = "22"
		protocol = "tcp"
		cidr_blocks = ["0.0.0.0/0"]
	}
	
	tags {
		name = "TF-SG1"
	}

}
