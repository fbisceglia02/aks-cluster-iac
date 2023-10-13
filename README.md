# AKS Cluster Infrastructure-as-Code Template

## Overview
This repository contains Infrastructure-as-Code (IaC) templates to set up an Azure Kubernetes Service (AKS) cluster within a brand-new resource group in Azure.

## Prerequisites

- Azure CLI installed and authenticated.
- Terraform installed (if using Terraform templates).
- Knowledge of Azure and AKS.

## Structure

```
.
├── README.md
├── terraform/            # Contains Terraform scripts (if using Terraform)
└──── main.tf
```

## Usage

### Using Terraform

1. Navigate to the `terraform/` directory:

   ```bash
   cd terraform/
   ```

2. Initialize the Terraform directory:

   ```bash
   terraform init
   ```

3. Plan the deployment:

   ```bash
   terraform plan -out=tfplan
   ```

4. Apply the Terraform plan to create the AKS cluster:

   ```bash
   terraform apply "tfplan"
   ```

## Cleanup

To destroy the resources created by this IaC:

### Terraform:

```bash
terraform destroy
```

## Notes

- Ensure that you have enough quotas in your Azure subscription for the resources you intend to deploy.
- Always review the scripts and templates before executing them, especially if you're working in a production environment.



*Note: This README assumes the use of Terraform as one of the IaC tools and offers a generic script-based approach as an alternative. Depending on the actual IaC tools you plan to use, you might need to adjust this template accordingly.*
