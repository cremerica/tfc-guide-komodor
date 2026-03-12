# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

terraform {
  required_providers {
    komodor = {
      source = "komodorio/komodor"
      version = "2.3.1"
    }
  }
}

provider "komodor" {
  api_key = var.api_key
}

resource "komodor_user" "my-user" {
  display_name = "tf-user"
  email = "tf-user@example.com"
}
