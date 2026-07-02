locals {
    common_tags = {
        project = var.project
        Environment = var.environment
        Terraform = "true"
        Name = local.common_name
    } 

    common_name = "${var.project}-${var.environment}" # roboshop-env
    az_names = slice(data.aws_availability_zones.available.names, 0, 2) # Here 2 is exclusive
}
