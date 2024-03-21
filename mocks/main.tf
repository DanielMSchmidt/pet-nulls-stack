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

data "tfcoremock_simple_resource" "my_simple_resource" {
  id = "my-simple-resource"
}

resource "tfcoremock_dynamic_resource" "my_dynamic_resource" {
  id = "my-dynamic-resource"
  my_value = data.tfcoremock_simple_resource.my_simple_resource.integer + 1
}
