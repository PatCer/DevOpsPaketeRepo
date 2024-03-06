param pWebsiteName string = uniqueString(resourceGroup().id)
param pLocation string = resourceGroup().location

resource webApplication 'Microsoft.Web/sites@2023-01-01' = {
  name: pWebsiteName
  location: pLocation
}

resource webApplicationExtension 'Microsoft.Web/sites/extensions@2023-01-01' = {
  parent: webApplication
  name: 'MSDeploy'
  properties: {
    appOffline: true
    packageUri: 'packageUri'
    setParameters: {
      'IIS Web Application Name': 'TestWebApp'     
    }
  }
}
