output "id" {
	value = "${aws_vpc.environment-example-2.id}"
}

output "dns" {
	value = "${aws_vpc.environment-example-2.enable_dns_hostnames}"
}

output "subnet1" {
	value = "${aws_subnet.subnet1-pub.id}"
}

output "subnet2" {
        value = "${aws_subnet.subnet2-pub.id}"
}

output "subnet3" {
        value = "${aws_subnet.subnet3-prv.id}"
}

output "subnet4" {
        value = "${aws_subnet.subnet4-prv.id}"
}
