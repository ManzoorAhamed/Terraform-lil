# EC2 Creation.

resource "aws_instance" "server1" {
	ami = "ami-6cd6f714"
	instance_type = "t2.micro"
	vpc_security_group_ids = ["${aws_security_group.sg1.id}"]
	subnet_id = "${aws_subnet.subnet1-pub.id}"
	key_name = "sand-west"
	
	tags {
		Name = "TF-EC2"
	}
}
