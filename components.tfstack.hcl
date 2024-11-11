# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0
# trigger "push_to_main" {
#     check = context.branch == "main" && context.is_pull_request == false
#     is_speculative = false
# }

variable "prefix" {
  type = string
}

variable "instances" {
  type = number
}

required_providers {
  random = {
    source  = "hashicorp/random"
    version = "= 3.3.2"
  }

  null = {
    source  = "hashicorp/null"
    version = "~> 3.1.1"
  }

  # tfcoremock = {
  #   source  = "hashicorp/tfcoremock"
  #   version = "0.2.0"
  # }
}

provider "random" "this" {}
provider "null" "this" {}
# provider "tfcoremock" "this" {}

component "pet" {
  source = "./pet"

  inputs = {
    prefix = var.prefix
  }

  providers = {
    random = provider.random.this
  }
}

component "pet2" {
  source = "./pet"

  inputs = {
    prefix = var.prefix
  }

  providers = {
    random = provider.random.this
  }
}

component "ephemeral" {
  source = "./ephemeral"

  inputs = {
    ephem = "not really an ephemeral value, but let's pretend it is"
  }

  providers = {
    random = provider.random.this
  }
}


component "nulls" {
  source = "./nulls"

  inputs = {
    pet       = component.pet.name
    instances = var.instances
  }

  providers = {
    null = provider.null.this
  }
}

output "hey" {
    value = component.nulls.ids
    type = set(string)
}