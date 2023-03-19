---
layout: default
title: Core Concepts
parent: Terraform Basics
grand_parent: Terraform
nav_order: 020
---

# Core Concepts

* TOC
{:toc}

## Objective

Understand the basics of Terraform including file structure, data types, variables, locals, providers, resources, data sources, modules and outputs.

## Overview

Terraform uses a domain specific language (DSL) known as HCL. HCL is a declaritive language. It describes the intended state of what needs to be provisioned/configured. Rather than tell terraform how to configure the system, HCL says what it should be and the provisioner figures out how to do it.

## File Structure

Terraform looks for all of the .tf files in the current directory and processes them all as one configuration. Any text file with a .tf extension can be a Terraform file. By default only the current directory is evaluated. Code can be seperated in to other directories using the module concept discussed later in this section. The root directory that terraform is executed against is known as the root module. 

## Data Types

- string: text
- number: any numeric representation
- bool: true or false
- list/tuple: an array of values that can be iterated over. ["hello", "world"]
- map/object: key/value representation of values {"hello" = "world}
- null: an unquoted null value, used in conditionals and to not set specific inputs

## Variables

Variables are used for configuration of Terraform code. They can be used in the root module using tfvar files or directly from the CLI.

```terraform
variable "hello_world_var" {
  type = string
  default = "Hello World - Variable"
}
```

## Locals

```terraform
locals {
  hello_world = "Hello World - Local"
}
```

## Providers

## Resources

## Data Sources

## Modules

## Outputs

```terraform
output "hello_world_local" {
  value = var.hello_world
}
```

```terraform
output "hello_world_local" {
  value = local.hello_world
}
```

## Review

### output.tf
```terraform
output "hello_world_local" {
  value = var.hello_world
}

output "hello_world_local" {
  value = local.hello_world
}
```

## Additional Reading

- [Terraform Language Documentation](https://developer.hashicorp.com/terraform/language)
- [Types and Values](https://developer.hashicorp.com/terraform/language/expressions/types)
- [Variables and Outputs](https://developer.hashicorp.com/terraform/language/values)
- [Modules](https://developer.hashicorp.com/terraform/language/modules)