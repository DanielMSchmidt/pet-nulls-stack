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

variable "resources" {
  type = number
}

resource "null_resource" "this1" {
  count = var.resources

  triggers = {
    pet = var.pet
  }
}

resource "null_resource" "this2" {
  count = var.resources

  triggers = {
    pet = var.pet
  }
}

resource "null_resource" "this3" {
  count = var.resources

  triggers = {
    pet = var.pet
  }
}

resource "null_resource" "this4" {
  count = var.resources

  triggers = {
    pet = var.pet
  }
}

resource "null_resource" "this5" {
  count = var.resources

  triggers = {
    pet = var.pet
  }
}

resource "null_resource" "this6" {
  count = var.resources

  triggers = {
    pet = var.pet
  }
}

resource "null_resource" "this7" {
  count = var.resources

  triggers = {
    pet = var.pet
  }
}

resource "null_resource" "this8" {
  count = var.resources

  triggers = {
    pet = var.pet
  }
}

resource "null_resource" "this9" {
  count = var.resources

  triggers = {
    pet = var.pet
  }
}

resource "null_resource" "this10" {
  count = var.resources

  triggers = {
    pet = var.pet
  }
}

resource "null_resource" "this11" {
  count = var.resources

  triggers = {
    pet = var.pet
  }
}

resource "null_resource" "this12" {
  count = var.resources

  triggers = {
    pet = var.pet
  }
}

resource "null_resource" "this13" {
  count = var.resources

  triggers = {
    pet = var.pet
  }
}

resource "null_resource" "this14" {
  count = var.resources

  triggers = {
    pet = var.pet
  }
}

resource "null_resource" "this15" {
  count = var.resources

  triggers = {
    pet = var.pet
  }
}

resource "null_resource" "this16" {
  count = var.resources

  triggers = {
    pet = var.pet
  }
}

resource "null_resource" "this17" {
  count = var.resources

  triggers = {
    pet = var.pet
  }
}

resource "null_resource" "this18" {
  count = var.resources

  triggers = {
    pet = var.pet
  }
}

resource "null_resource" "this19" {
  count = var.resources

  triggers = {
    pet = var.pet
  }
}

resource "null_resource" "this20" {
  count = var.resources

  triggers = {
    pet = var.pet
  }
}

output "ids_this1" {
  value = [for n in null_resource.this1: n.id]
}

output "ids_this2" {
  value = [for n in null_resource.this2: n.id]
}

output "ids_this3" {
  value = [for n in null_resource.this3: n.id]
}

output "ids_this4" {
  value = [for n in null_resource.this4: n.id]
}

output "ids_this5" {
  value = [for n in null_resource.this5: n.id]
}

output "ids_this6" {
  value = [for n in null_resource.this6: n.id]
}

output "ids_this7" {
  value = [for n in null_resource.this7: n.id]
}

output "ids_this8" {
  value = [for n in null_resource.this8: n.id]
}

output "ids_this9" {
  value = [for n in null_resource.this9: n.id]
}

output "ids_this10" {
  value = [for n in null_resource.this10: n.id]
}

output "ids_this11" {
  value = [for n in null_resource.this11: n.id]
}

output "ids_this12" {
  value = [for n in null_resource.this12: n.id]
}

output "ids_this13" {
  value = [for n in null_resource.this13: n.id]
}

output "ids_this14" {
  value = [for n in null_resource.this14: n.id]
}

output "ids_this15" {
  value = [for n in null_resource.this15: n.id]
}

output "ids_this16" {
  value = [for n in null_resource.this16: n.id]
}

output "ids_this17" {
  value = [for n in null_resource.this17: n.id]
}

output "ids_this18" {
  value = [for n in null_resource.this18: n.id]
}

output "ids_this19" {
  value = [for n in null_resource.this19: n.id]
}

output "ids_this20" {
  value = [for n in null_resource.this20: n.id]
}

output "all_ids" {
  value = concat(
    [for n in null_resource.this1: n.id],
    [for n in null_resource.this2: n.id],
    [for n in null_resource.this3: n.id],
    [for n in null_resource.this4: n.id],
    [for n in null_resource.this5: n.id],
    [for n in null_resource.this6: n.id],
    [for n in null_resource.this7: n.id],
    [for n in null_resource.this8: n.id],
    [for n in null_resource.this9: n.id],
    [for n in null_resource.this10: n.id],
    [for n in null_resource.this11: n.id],
    [for n in null_resource.this12: n.id],
    [for n in null_resource.this13: n.id],
    [for n in null_resource.this14: n.id],
    [for n in null_resource.this15: n.id],
    [for n in null_resource.this16: n.id],
    [for n in null_resource.this17: n.id],
    [for n in null_resource.this18: n.id],
    [for n in null_resource.this19: n.id],
    [for n in null_resource.this20: n.id]
  )
}