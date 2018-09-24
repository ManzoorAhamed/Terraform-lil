resource "aws_subnet" "subnet1" {
        cidr_block = "${cidrsubnet(aws_vpc.environment-example-2.cidr_block,3,1)}"
        vpc_id = "${aws_vpc.environment-example-2.id}"
        availability_zone = "us-west-2a"
        tags {
                Name = "TF-sub1"
        }
}

resource "aws_subnet" "subnet2" {
        cidr_block = "${cidrsubnet(aws_vpc.environment-example-2.cidr_block,2,2)}"
        vpc_id = "${aws_vpc.environment-example-2.id}"
        availability_zone = "us-west-2b"
        tags {
                Name = "TF-sub2"
        }
}


resource "aws_security_group" "subnetsecurity" {
        vpc_id = "${aws_vpc.environment-example-2.id}"

        ingress {
                cidr_blocks = [
                        "${aws_vpc.environment-example-2.cidr_block}"
                ]

        from_port = 80
        to_port = 80
        protocol = "tcp"
        }

        tags {
                Name = "TF-sg1"
        }
}
