variable "stack_name_prefix" {}
variable "name" {}
variable "environment" {}
variable "vpc_id" {}
variable "project" {}
variable "contact" {}

variable "private_subnet_ids" {
  type = "list"
}

data "template_file" "stack_name" {
  template = "${var.stack_name_prefix}${var.environment}-${var.name}"
}
