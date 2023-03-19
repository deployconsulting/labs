---
layout: default
title: Outputs
parent: Terraform Basics
grand_parent: Terraform
nav_order: '0050'
last_modified_date: 2023-03-18 23:07:00 +0400
---

# Outputs

* TOC
{:toc}

## Objective

Understand the basics of Terraform outputs.

## Overview

Outputs return a value from a module. This value can be used in other modules or
as user readable outputs.

## Lab

### Add a Static Output

Let's create a basic output in the root module. This output will return a string
value. Since it is in the root module and a known value it will be visible in
the plan.

edit output.tf
{: .label .label-blue }

```terraform
output "text" {
  value = "Hello World"
}
```

### Plan

Execute
{: .label .label-green }

``` bash
terraform plan
```

## Review

In this section we created a static output. We did not apply the change and thus
no state has been created. We will cover that in the next section. It's not
currently very useful but will become more useful as we build on our project.

## Additional Reading

* [Output Values](https://developer.hashicorp.com/terraform/language/values/outputs)
