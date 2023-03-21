---
layout: default
title: Resources
parent: Terraform Basics
grand_parent: Terraform
nav_order: '0110'
last_modified_date: 2023-03-21T05:22:50
---

# Resources

* TOC
{:toc}

## Objective

Understand the basics of Terraform resources.

## Overview

The second component provided by providers is the resource. Resources will be
created, replaced, updated or deleted based on their configuration. Resource
declarations contain four parts, the resource keyword, the resource type, a name
and a configuration block.

```terraform
resource "type" "name" {}
```

Resources make available attributes that can be access using the following
syntax type.name.attribute.

## Lab

In this lab we will create a new resource (a random pet name) and return an
attribute from it.

### Add a Resource

Edit main.tf
{: .label label-blue}

```terraform
resource "random_pet" "pet" {}
```

### Add Another Output

Edit outputs.tf
{: .label label-blue}

```terraform
output "resource" {
  value = random_pet.pet.id
}
```

### Plan

Execute
{: .label .label-green}

```bash
terraform plan
```

### Apply

In the plan step you will notice that the output of our newly created resource
is unknown. This is because we have not created it yet. To find out what our new
random pet name is we must run an apply.

Execute
{: .label .label-green}

```bash
terraform apply
```

## Review

In this section we created our first resource, a random pet name and accessed
attributes to output the name.

## Additional Reading

* [Random Provider](https://registry.terraform.io/providers/hashicorp/random/latest/docs)
