locals {
  hello_world = "Hello World - Local"
}

data "http" "tf_version" {
  url = "https://checkpoint-api.hashicorp.com/v1/check/terraform"

  request_headers = {
    Accept = "application/json"
  }
}

resource "random_pet" "pet" {}