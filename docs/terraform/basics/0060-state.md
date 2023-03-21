---
layout: default
title: State
parent: Terraform Basics
grand_parent: Terraform
nav_order: '0060'
last_modified_date: 2023-03-21T02:23:52
---

WIP
{: .label .label-red }

# State

* TOC
{:toc}

## Objective

Understand the basics of Terraform state.

## Overview

Terraform tracks resources and all of their properties in a state file. The
state is how Terraform knows what should be deployed at any given time.
State can be stored locally in a project or remotely in backends. As they
are critical to the operation of Terraform and Terraform projects are often
collaborative, it is usually best to put them in a remote backend. This also
enables features like state locking to allow multiple users to work on a project
at the same time. Since this lab is covering basics and not meant to be
collaborative we will be storing state locally so that we can examine it. State
is not meant to be edited manually. In the event that changes need to be made
there are CLI commands that work with both local and remote state.

## Lab

### Apply current project

Up until now we have not applied our config. We need to do this before a
state file will be created.

Execute
{: .label .label-green }

```bash
terraform apply
```

Answer 'yes' when prompted.

### Explore the terraform.statefile

Now that we have applied our configuration we can see a new file created,
terraform.tfstate. The state is plain text and in json format so it can be
opened with a text editor.

Spend a moment reviewing this simple state file.

## Review

In this lab we applied our configuration for the first time and examined the
state file that was created.

## Additional Reading

* [State](https://developer.hashicorp.com/terraform/language/state)
