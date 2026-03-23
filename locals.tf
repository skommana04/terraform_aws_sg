locals {
    common_tags = {
        project = var.project
        environment = var.environment
        component = var.component
    }
    comman_name_suffix = "${var.project}-${var.component}-${var.environment}" #roboshop-catalogue-dev
}