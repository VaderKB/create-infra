resource "aws_security_group" "rules" {
    name = "ec2_inbound_rules"
}

resource "aws_vpc_security_group_ingress_rule" "allow_ssh_ipv4" {
    security_group_id = aws_security_group.rules.id
    cidr_ipv4 = "${var.cidr_block}/0"
    count = 4
    from_port = var.ports[count.index]
    ip_protocol = "tcp"
    to_port = var.ports[count.index]
}