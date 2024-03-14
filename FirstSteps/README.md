## Bicep File Documentation

This documentation provides an overview of the Bicep code for deploying a storage account and a blob container in Azure.

### Parameters

- **pLocation** (string): Specifies the location (region) where the Azure resources will be deployed. It defaults to the location of the resource group.
  
- **storageAccountName** (string): Specifies the name for the storage account. It must consist of lowercase letters and numbers only, and it should be unique across Azure. A unique name is generated using the `uniqueString()` function appended to the resource group's ID.

### Resources

#### Storage Account

The code defines an Azure Storage Account resource with the following properties:

- **Name**: The name of the storage account is derived from the `storageAccountName` parameter.
  
- **Location**: The location is set to the value of the `pLocation` parameter.
  
- **SKU**: Specifies the pricing tier and replication strategy for the storage account. In this case, it is set to `Standard_LRS` (Standard Locally Redundant Storage).
  
- **Kind**: Specifies the type of storage account. Here, it is set to `StorageV2`, indicating a general-purpose v2 storage account.

#### Blob Container

A blob container is created within the storage account to store blobs. The container's name is set to `'default/storage'` within the specified storage account. It depends on the provisioning of the storage account resource (`myStorage`) to ensure that the storage account is provisioned before attempting to create the container.

### Usage

To deploy this Bicep template, you can use the Azure CLI or Azure PowerShell with the Azure Bicep extension. Here's an example using Azure CLI:

1. Ensure you have Azure CLI installed and logged in to your Azure account.
2. Navigate to the directory containing the Bicep file.
3. Run the following Azure CLI command to deploy the Bicep template:

   ```az deployment group create --resource-group <resource-group-name> --template-file <template-file-name.bicep>```

   Replace `<resource-group-name>` with the name of your Azure resource group and `<template-file-name.bicep>` with the name of the Bicep file.

### Note

- Ensure that you have the necessary permissions to create resources in the specified resource group.
- Customize the parameters and resource configurations as per your requirements.
- Review Azure pricing and limitations associated with storage accounts and blob containers.