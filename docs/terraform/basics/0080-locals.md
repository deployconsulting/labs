---
layout: default
title: Locals
parent: Terraform Basics
grand_parent: Terraform
nav_order: '0080'
last_modified_date: 2023-03-21T05:22:50
---

# Locals

* TOC
{:toc}

## Objective

Understand the basics of Terraform local variables.

## Overview

Terraform offers a second type of variable knows as a local variable. Locals are
available to the module they are defined in. Locals are often used for repeated
values and expressions. Locals can not be overridden from the CLI or tfvars
file. They are defined with the locals keyword followed by a map of key/value
pairs.

```terraform
locals {
  key = "value"
}
```

## Lab

In this lab we will define a local variable and output it to the CLI.

### Add a Local Value to the Root Module

Edit main.tf
{: .label label-blue}

```terraform
locals {
  hello_world_local = "Hello World - Local"
}
```

### Add Another Output

Edit output.tf
{: .label label-blue}

```terraform
output "hello_world_local" {
  value = local.hello_world_local
}
```

### Plan

We can now view our new output in a plan.

Execute
{: .label .label-green}

```bash
terraform plan
```

## Review

In this section we learned how to use local variables.

## Additional Reading

* [Local Values](https://developer.hashicorp.com/terraform/language/values/locals)
