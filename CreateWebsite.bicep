param location string = resourceGroup().location
 
resource appServicePlan 'Microsoft.Web/serverfarms@2021-02-01' = {
  name: 'AppointmentApplicationUserStory1-plan'
  location: location
  sku: {
    name: 'B1'
    tier: 'Basic'
  }
}
 
resource appService 'Microsoft.Web/sites@2021-02-01' = {
  name: 'AppointmentApplicationUserStory1'
  location: location
  kind: 'app'
  properties: {
    serverFarmId: appServicePlan.id
    httpsOnly: true
  }
}
