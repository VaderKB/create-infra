variable "ec2_name" {
    type = string
}

variable "key_name" {
    type = string
}

variable "ami" {
    type = string
}

variable "instance_type" {
    type = string
}


variable "cidr_block" {
    type = string
}

variable "ports" {
    type = list(any)
}