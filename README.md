# Terraform-lil
Linkedin Learning


VPC_Creation :
network.tf file to create vpc

subnet creation:
subnetwork.tf file to create subnetworks

Route Table Creation:
routetable.tf file to create route table

Route Creation:
Route is the file which populates the specific route table.
route.tf  file attaches igw to route table

Subnet Association:
Associate subnet with route table1 to become public subnet.
Associate subnet with route table2 to become private subnet.
subnet_association.tf file.

IGW Creation:
igw.tf to create IGW in the VPC

ACL Creation.
acl.tf Create ACL with inbound and outbound rules.

Security Group Creation:
sec_gr.tf SG creation with ingress rule allow ssh from ALL.

