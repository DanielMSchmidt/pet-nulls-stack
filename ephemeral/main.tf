terraform {
  required_providers {
    random = {
      source = "hashicorp/random"
      version = "3.3.2"
    }
  }
}

variable "ephem" {
    type      = string
    ephemeral = true
}

variable "prefix" {
  type = string
  default = "ephemeral_"
}

resource "random_pet" "this" {
  prefix = var.prefix
  length = 10
}

output "out" {
    value = ephemeralasnull(var.ephem)
}