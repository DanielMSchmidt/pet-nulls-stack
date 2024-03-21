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

variable "pet" {
  type = string
}

variable "instances" {
  type = number
}

resource "null_resource" "this" {
  count = var.instances

  triggers = {
    pet = var.pet
  }

  lifecycle {
    replace_triggered_by = [ 
      # replace all but the last instance
      var.instances > 1 ? null_resource.this[count.index - 1] : null
     ]
  }
}

output "ids" {
  value = [for n in null_resource.this: n.id]
}
