---
layout: default
title: Lab Setup
parent: Terraform Basics
grand_parent: Terraform
nav_order: '0020'
last_modified_date: 2023-03-21T05:22:50
---

# Lab Setup

* TOC
{:toc}

## Objective

Create and initialize an empty Terraform Project.

## Lab

For the remainder of this lesson we need to set up a new Terraform project. The
following shell commands will create a new folder and populate 3 empty files

### Create Lab Directory and Blank Files

Execute
{: .label .label-green}

```bash
mkdir basics
cd basics
touch {main,variables,outputs}.tf
```

## Review

In this step we have created an empty Terraform project. Nothing has happened
yet but we will be able to use this project to explore the core concepts.
