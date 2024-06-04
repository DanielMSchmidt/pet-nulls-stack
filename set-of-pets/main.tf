# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

terraform {
  required_providers {
    random = {
      source  = "hashicorp/random"
      version = "3.3.2"
    }
  }
}

variable "prefix" {
  type = string
}

variable "max" {
  type    = number
  default = 10
}

resource "random_integer" "this" {
  min = 1
  max = var.max
}

resource "random_pet" "this" {
  count = random_integer.this.result

  prefix = var.prefix
  length = 5
}

output "value" {
  value = toset(random_pet.this.*)
}
