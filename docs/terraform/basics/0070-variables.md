---
layout: default
title: Variables
parent: Terraform Basics
grand_parent: Terraform
nav_order: '0070'
last_modified_date: 2023-03-21T05:22:50
---

# Variables

* TOC
{:toc}

## Objective

Understand the basics of Terraform variables.

## Overview

Variables are used for configuration of Terraform code. They can be used in the
root module using tfvars files or directly from the CLI. They can also be passed
defined in a module and passed in from the calling module.

Declaring a variable is broken in to 3 parts, the variable keyword, the variable
name and a block of optional properties.

```terraform
variable "variable_name" {}
```

## Lab

To demonstrate this concept we will combine what we did with outputs and the new
variable structure to output some configurable text.

### Add a Variable to the Root Module

Edit variables.tf
{: .label label-blue}

```terraform
variable "hello_world_var" {
  type = string
  default = "Hello World - Variable"
}
```

### Add Another Output

Edit outputs.tf
{: .label label-blue}

```terraform
output "hello_world_var" {
  value = var.hello_world
}
```

### Plan

We can now view our new output in a plan.

Execute
{: .label .label-green}

```bash
terraform plan
```

### Plan with a variable on the command line

We can change variables in the root module at plan and apply with the -var flag.

Execute
{: .label .label-green}

```bash
terraform plan -var hello_world_var=demo
```

## Review

In this section we covered input variables and how they can be used to configure
our code.

## Additional Reading

* [Input Variables](https://developer.hashicorp.com/terraform/language/values/variables)
