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



variable "until" {
  type = number
}

resource "null_resource" "countdown" {
  triggers = {
      until = var.until
  }

  provisioner "local-exec" {
      command = <<EOF
        echo "Countdown: ${var.until}"
        for i in `seq ${var.until} -1 1`; do
          echo $i
          sleep 1
        done
        EOF
  }

  # lifecycle {
  #   replace_triggered_by = [
  #     null_resource.base
  #    ]
  # }
}

output "ids" {
  value = [for n in null_resource.this: n.id]
}
