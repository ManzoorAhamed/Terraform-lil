resource "aws_route_table" "route1" {
	vpc_id = "${aws_vpc.environment-example-2.id}"

	tags {
		Name = "TF-Route1"
	}
}


resource "aws_route_table" "route2" {
	vpc_id = "${aws_vpc.environment-example-2.id}"
	
	tags {
                Name = "TF-Route2"
        }
}
