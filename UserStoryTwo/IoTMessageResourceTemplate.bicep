res-resource privateEndpoint 'Microsoft.Network/privateEndpoints@2022-01-01' = {
  name: name
  location: location
  properties: {
    privateLinkServiceConnections: [
      {
        name: name
        properties: {
          privateLinkServiceId: privateLinkServiceId
          groupIds: [
            groupId
          ]
        }
      }
    ]
    subnet: {
      id: subnetId
    }
  }
}

