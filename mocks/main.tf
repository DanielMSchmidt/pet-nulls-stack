# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0
terraform {
  required_providers {
    tfcoremock = {
      source  = "hashicorp/tfcoremock"
      version = "0.2.0"
    }
  }
}

resource "tfcoremock_dynamic_resource" "my_dynamic_resource" {
  id = "my-dynamic-resource"
  my_value = 42
}
