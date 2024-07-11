# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

deployment "simple" {
  variables = {
    prefix           = "simple2"
    instances        = 1
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
    instances        = 5
  }
}

deployment "sane" {
  variables = {
    prefix           = "sane"
    instances        = 2
  }
}

deployment "normal1" {
  variables = {
    prefix           = "normal1"
    instances        = 1
  }
}

deployment "normal2" {
  variables = {
    prefix           = "normal2"
    instances        = 1
  }
}

deployment "normal3" {
  variables = {
    prefix           = "normal3"
    instances        = 1
  }
}

deployment "normal4" {
  variables = {
    prefix           = "normal4"
    instances        = 1
  }
}

deployment "normal5" {
  variables = {
    prefix           = "normal5"
    instances        = 1
  }
}
