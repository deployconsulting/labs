---
layout: default
title: Installation
parent: Terraform Basics
grand_parent: Terraform
nav_order: '0010'
last_modified_date: 2023-03-21T01:22:34
---

# Installation

* TOC
{:toc}

## Objective

The goal of this section is to ensure Terraform is installed properly.

## Overview

Terraform is packaged as a single binary making it simple to install. Each
operating system and architecture has a direct binary download link provided on
the Hashicorp site. [Terraform Releases](https://releases.hashicorp.com/terraform/)

## Lab

Terraform is straightforward to install. Most of the documentation below can be
found in more detail at
[Install Terraform](https://developer.hashicorp.com/terraform/downloads).

### MacOS

#### MacOS: Brew

[Brew](https://brew.sh) is a package manager that takes care of installing
applications along with their dependencies. It detects architectures and
installs the correct binary. This method allows for a simple install as well as
upgrade. Hashicorp maintains a tap for all of their products: hashicorp/tap. To
install Terraform we just need to add the tap and call the install command.

Execute
{: .label .label-green}

```bash
brew tap hashicorp/tap
brew install hashicorp/tap/terraform
```

The brew folder is likely already in your path if brew is correctly installed
but if not the binary is likely at `/opt/homebrew/bin/terraform`.

#### MacOS: Manual Installation

Execute
{: .label .label-green}

```bash
TFVERSION=1.4.2
TFARCH=arm64
TFOS=darwin
curl -O "https://releases.hashicorp.com/terraform/${TFVERSION}/terraform_${TFVERSION}_${TFOS}_${TFARCH}.zip"
unzip terraform_${TFVERSION}_${TFOS}_${TFARCH}.zip
```

Be sure to update the TFARCH variable to amd64 if you are on an Intel Mac.
{: .note }

### Windows

Hashicorp does not currently support any package managers on Windows. Manual
installation is the only officially supported method.

Execute
{: .label .label-green}

```batch
set TFVERSION=1.4.2
set TFARCH=amd64
set TFOS=windows
curl -O "https://releases.hashicorp.com/terraform/%TFVERSION%/terraform_%TFVERSION%_%TFOS%_%TFARCH%.zip"
tar -xf terraform_%TFVERSION%_%TFOS%_%TFARCH%.zip
```

### Linux

#### Linux: Package Manager

Every package manager on Linux will have a separate process. As this varies so
much the best way to find out how to do it for your distro is using the official
documentation: [Install Terraform](https://developer.hashicorp.com/terraform/downloads).

#### Linux: Manual Installtion

Execute
{: .label .label-green}

```bash
TFVERSION=1.4.2
TFARCH=amd64
TFOS=linux
curl -O "https://releases.hashicorp.com/terraform/${TFVERSION}/terraform_${TFVERSION}_${TFOS}_${TFARCH}.zip"
unzip terraform_${TFVERSION}_${TFOS}_${TFARCH}.zip
```

## Setting the PATH variable

The PATH variable is used to tell the system where to look for executables
called by the terminal or a script. If you are unable to call `terraform` at
this point it is likely not in your PATH. A message similar to "command not
found" is usually a clear indication that the binary is not in your path. To fix
this issue either move terraform to a location in your PATH variable, append the
location of the binary to your PATH variable or use the full path when calling
`terraform`.

## Verification

To verify Terraform is installed successfully and available in your PATH call:

Execute
{: .label .label-green}

```bash
terraform version
```

The version shown should match the version downloaded above.

If an error is received during this step please revisit the PATH section above
{: .note }

Do not proceed from this section if the verification step fails. The remainder
of this guide depends on Terraform being available.
{: .warning }

## Review

In this section we installed Terraform and ensured it was available for use
system-wide.

## Additional Reading

* [Install Terraform](https://developer.hashicorp.com/terraform/downloads)
