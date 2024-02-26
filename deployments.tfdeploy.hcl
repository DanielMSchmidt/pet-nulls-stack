# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

deployment "simple" {
  variables = {
    prefix           = "simple234"
    instances        = "fünf"
  }
}

deployment "complex" {
  variables = {
    prefix           = "complex"
    instances        = 3
  }
}

deployment "insane" {
  variables = {
    prefix           = "insane"
    instances        = 30
  }
}
