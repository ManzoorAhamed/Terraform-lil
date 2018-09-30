resource "aws_network_acl" "acl-1" {
	vpc_id = "${aws_vpc.environment-example-2.id}"
	subnet_ids = ["${aws_subnet.subnet1-pub.id}","${aws_subnet.subnet2-pub.id}"]

	egress {
		protocol = "tcp"
		cidr_block = "0.0.0.0/0"
		rule_no  = "10"
		from_port = "22"
		to_port = "22"
		action = "allow"
	}

	ingress {	
		protocol = "tcp"
		cidr_block = "0.0.0.0/0"
		rule_no = "10"
		from_port = "80"
		to_port = "80"
		action = "allow"
	}

	tags {
		name = "TF-acl"
	}
}
