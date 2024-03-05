param pLocation string = resourceGroup().location
@description('Provide a name for the storage account. Use only lower case lettes and numbers. The name must be unique across Azure')
param storageAccountName string = 'store${uniqueString(resourceGroup().id)}'

resource virtualNetwork 'Microsoft.Network/virtualNetworks@2023-09-01' = {
  name: storageAccountName
  location: pLocation
  properties: {
    addressSpace: {
      addressPrefixes: [
        '10.0.0.0/16'
      ]
    }
    subnets: [
      {
        name: 'Subnet-1'
        properties: {
          addressPrefix: '10.0.0.0/24'
        }
      }
      {
        name: 'Subnet-2'
        properties: {
          addressPrefix: '10.0.1.0/24'
        }
      }
    ]
  }
}
resource myStorage 'Microsoft.Storage/storageAccounts@2023-01-01' ={
  name: storageAccountName
  location: pLocation
  sku:{
    name: 'Standard_LRS'
  }
  kind: 'StorageV2'
}
