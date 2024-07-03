# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

terraform {
  required_providers {
    null = {
      source = "hashicorp/null"
      version = "3.1.1"
    }
  }
}

variable "input_value" {
  type = map(string)
  default = {
    pet = "cat"
  }
}

data "null_data_source" "values" {
  inputs = var.input_value
}

output "outputs" {
  value = data.null_data_source.values.outputs
}

output "random" {
  value = data.null_data_source.values.random
}
