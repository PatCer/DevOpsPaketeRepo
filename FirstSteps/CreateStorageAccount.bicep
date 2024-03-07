param pLocation string = resourceGroup().location
@description('Provide a name for the storage account. Use only lower case lettes and numbers. The name must be unique across Azure')
param storageAccountName string = 'store${uniqueString(resourceGroup().id)}'

resource myStorage 'Microsoft.Storage/storageAccounts@2023-01-01' ={
  name: storageAccountName
  location: pLocation
  sku:{
    name: 'Standard_LRS'
  }
  kind: 'StorageV2'
}
resource BlobContainer 'Microsoft.Storage/storageAccounts/blobServices/containers@2023-01-01'={
  name: '${myStorage.name}/default/storage'
  dependsOn:[
    myStorage
  ]
}



