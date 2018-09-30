resource "aws_route_table_association" "associ-1" {
	subnet_id = "${aws_subnet.subnet1-pub.id}"
     	route_table_id = "${aws_route_table.route1.id}"
}

resource "aws_route_table_association" "associ-2" {
        subnet_id = "${aws_subnet.subnet2-pub.id}"
        route_table_id = "${aws_route_table.route1.id}"
}

resource "aws_route_table_association" "associ-3" {
        subnet_id = "${aws_subnet.subnet3-prv.id}"
        route_table_id = "${aws_route_table.route2.id}"
}

resource "aws_route_table_association" "associ-4" {
        subnet_id = "${aws_subnet.subnet4-prv.id}"
        route_table_id = "${aws_route_table.route2.id}"
}
