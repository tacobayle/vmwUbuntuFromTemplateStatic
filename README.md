# vmwUbuntuFromTemplateStatic

## Goals
Terraform Plan | Clone an Ubuntu template in vcenter and configure it (through userdata) based on static IP address

## Prerequisites:
- TF installed
- template VM exists in vcenter
- VMware credentials are configured as environment variable for Vcenter:
```
TF_VAR_vsphere_user=******
TF_VAR_vsphere_server=******
TF_VAR_vsphere_password=******
```

## Environment:

Terraform Plan  has/have been tested against:

### terraform

```
Terraform v0.13.1
+ provider registry.terraform.io/hashicorp/null v2.1.2
+ provider registry.terraform.io/hashicorp/template v2.1.2
+ provider registry.terraform.io/hashicorp/vsphere v1.24.0
+ provider registry.terraform.io/terraform-providers/nsxt v3.0.1
Your version of Terraform is out of date! The latest version is 0.13.2. You can update by downloading from https://www.terraform.io/downloads.html
```

### V-center/ESXi version:
```
vCSA - 7.0.0 Build 16749670
ESXi host - 7.0.0 Build 16324942
```

## Input/Parameters:

1. All the variables stored in variables.tf

## Use the the terraform script to:
- Clone a template to a VM (networking based on static IP address)

## Run the terraform:
```
git clone https://github.com/tacobayle/vmwUbuntuFromTemplateStatic ; cd vmwUbuntuFromTemplateStatic ; terraform init ; terraform apply -auto-approve
```
