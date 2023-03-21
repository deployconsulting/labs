terraform {
  required_providers {
    http = {
      source = "hashicorp/http"
      version = "~>3.2.1"
    }
    random = {
      source = "hashicorp/random"
      version = "~>3.4.3"
    }
  }
}

locals {
  hello_world_local = "Hello World - Local"
}
