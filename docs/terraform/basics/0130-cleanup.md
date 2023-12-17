---
layout: default
title: Cleanup
parent: Terraform Basics
grand_parent: Terraform
nav_order: '0130'
last_modified_date: 2023-12-17T04:13:19
---

# Cleanup

* TOC
{:toc}

## Objective

Understand how to remove all resources from a Terraform project.

## Overview

This project did not create any real resources outside of our project folder so
we could just delete it. This is a good opportunity to learn a new Terraform
command: `terraform destroy`. In the future we will use this command to tear
down all resources created in our project.

## Lab

### Destroy

Running the destroy command generates and empty plan and applies it, effectively
removing all created resources.

Execute
{: .label .label-green}

```bash
terraform destroy
```

### Apply

Now we can reapply our project and observe that new pet names are created.

Execute
{: .label .label-green}

```bash
terraform apply
```

### Destroy Again

Since we didn't create any real resources we could stop here but running destroy
again is good practice.

Execute
{: .label .label-green}

```bash
terraform destroy
```

## Review

In this section we destroyed all of our resources and recreated them to see the
random provider in action.

## Additional Reading

* [Command: destroy](https://developer.hashicorp.com/terraform/cli/commands/destroy)
