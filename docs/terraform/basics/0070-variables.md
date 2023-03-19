---
layout: default
title: Variables
parent: Terraform Basics
grand_parent: Terraform
nav_order: '0070'
last_modified_date: 2023-03-19T20:45:15
---

WIP
{: .label .label-red }

# Variables

* TOC
{:toc}

## Objective

Understand the basics of Terraform outputs.

## Overview

Variables are used for configuration of Terraform code. They can be used in the
root module using tfvar files or directly from the CLI. They can also be passed
to a module.

## Lab

To demonstrate this concept we will combine what we did with outputs and the new
variable structure to output some configurable text.

Edit variables.tf
{: .label label-blue}

```terraform
variable "hello_world_var" {
  type = string
  default = "Hello World - Variable"
}
```

Edit outputs.tf
{: .label label-blue}

```terraform
output "hello_world_local" {
  value = var.hello_world
}

## Locals

locals {
  hello_world = "Hello World - Local"
}
```

## Review

## Additional Reading

* [Output Values](https://developer.hashicorp.com/terraform/language/values/outputs)
* [Input Variables](https://developer.hashicorp.com/terraform/language/values/variables)
