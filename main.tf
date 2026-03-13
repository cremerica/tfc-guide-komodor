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
  
}

resource "komodor_user" "my-user" {
  display_name = var.user_name
  email = var.user_email
}

resource "komodor_user" "second_user" {
  display_name = "Joe Shmo"
  email = "shmomeister@collio.edu"
}
