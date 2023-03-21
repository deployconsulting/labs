---
layout: default
title: Providers
parent: Terraform Basics
grand_parent: Terraform
nav_order: '0090'
last_modified_date: 2023-03-21T05:22:50
---

# Providers

* TOC
{:toc}

## Objective

Understand the basics of Terraform providers.

## Overview

The Terraform core is a somewhat basic utility up to this point. It provides a
framework and basic language constructs that alone don't do much. The power in
Terraform comes with it's extensibility. The main way to extend Terraform is
through providers. Providers are plugins for Terraform, written in Go, that
allow Terraform to interact with external services. At the time of writing this
there are almost 300 official and partner providers and almost 3000 community
providers. You can write your own as well. Providers typically wrap an API but
can be used for anything that follows a CRUD lifecycle.

Providers give an interface to services such as Cloud Service Providers, SASS
products, and configurable hardware (networking equipment, VMware, etc).

Providers expose two new components to Terraform, data sources and resources.
Data sources allow the user to lookup information while resources allow us to
provision, update, replace and delete.

## Lab

In this lab we will add providers to be used in future labs.

### Add Providers to man.tf

Add the following declaration to the top of main.tf.

Edit main.tf
{: .label label-blue}

```terraform
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
```

### Init

We have now added providers to our project but as we learned before, we need to
re-initialize the project to download the provider.

Execute
{: .label .label-green}

```bash
terraform init
```

### Explore the Newly Created .terraform Directory

No changes have been made to the project we have built so far but a new folder
exists in our working directory. The new .terraform folder contains the
providers specified above.

### Terraform Registry

Terraform providers are usually used from the Terraform Registry. It provides a
wide array of supported and community providers that can be imported with a few
lines of configuration like we added above. Take a moment to explore the options
available directly from the registry.

[Provider Registry](https://registry.terraform.io/browse/providers)

## Review

In this section we explored the extensibility of Terraform through providers and
the Terraform Registry.

## Additional Reading

* [Providers](https://developer.hashicorp.com/terraform/language/providers)
* [Provider Registry](https://registry.terraform.io/browse/providers)
