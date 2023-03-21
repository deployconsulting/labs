---
layout: default
title: Modules
parent: Terraform Basics
grand_parent: Terraform
nav_order: '0110'
last_modified_date: 2023-03-21T05:22:50
---

# Modules

* TOC
{:toc}

## Objective

Understand the basics of Terraform modules.

## Overview

Modules are a Terraform construct that allows the grouping of Terraform
components for reusability. Similar to a function in other languages they allow
for inputs and outputs much like a functions arguments and returns. Modules are
contained either in a folder or in the Terraform Registry. Module declarations
contain three parts, the module keyword, a name, and a configuration block. The
source parameter is required in the configuration block.

```terraform
module "name" {
  source = "./folder"
}
```

## Lab

In this lab we will create a module of our existing resource and call it in our
project.

### Create a New Module

Execute
{: .label .label-green}

```bash
mkdir pet-name
touch pet-name/{main,outputs,variables}.tf
```

Edit pet-name/main.tf
{: .label label-blue}

```terraform
resource "random_pet" "pet" {}
```

Edit pet-name/outputs.tf
{: .label label-blue}

```terraform
output "name" {
  value = random_pet.pet.id
}
```

### Call The Module

Edit main.tf
{: .label label-blue}

```terraform
module "pet_name" {
  source = "./pet-name"
}
```

### Add Another Output

Edit outputs.tf
{: .label label-blue}

```terraform
output "module" {
  value = module.pet_name.name
}
```

### Plan

Execute
{: .label .label-green}

```bash
terraform plan
```

### Apply

Execute
{: .label .label-green}

```bash
terraform apply
```

## Review

In this section we created a new module and added some code. We used the outputs
of that module and passed it to an output in our root module.

## Additional Reading

* [Modules](https://developer.hashicorp.com/terraform/language/modules)
