---
layout: default
title: Setup
parent: Terraform Basics
grand_parent: Terraform
nav_order: '0020'
last_modified_date: 2023-03-18 22:39:00 +0400
---

# Setup

* TOC
{:toc}

## Objective

Create and initialize an empty Terraform Project.

## Setup Guide

For the remainder of this lesson we need to set up a new Terraform project. The
following shell commands will create a new folder, populate 3 empty files and
initialize the Teraform project.

```bash
mkdir basics
cd basics
touch main.tf variables.tf outputs.tf
terraform init
```

## Review

In this step we have created and initialized an empty Terraform project. Nothing
has happened yet but we will be able to use this project to explore the core
concepts.
