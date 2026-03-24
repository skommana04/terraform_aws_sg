variable sg_tags {
    type = map 
    default = {}
}
variable "project" {
    type = string
    default = "roboshop"
}
variable "component" {
        type = string
    default = "catalogue"
}
variable "environment" {
    type = string
    default = "dev"
}

variable "vpc_id" {}
variable "sg_name" {}