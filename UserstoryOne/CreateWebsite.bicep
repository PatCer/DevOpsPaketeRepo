param location string = resourceGroup().location
param repositoryBranch string = 'main'
param textToReplaceSubtitleWith string = 'This is my default subtitle text. Boring, right?'

resource appServicePlan 'Microsoft.Web/serverfarms@2023-01-01' = {
  name: 'AppointmentApplicationUserStory1-plan'
  location: location
  kind: 'app'
  properties:{
    reserved: true
  }
  sku: {
    name: 'F1'
  }
}

resource appService 'Microsoft.Web/sites@2023-01-01' = {
  name: 'AppointmentApplicationUserStory1'
  location: location
  properties: {
    serverFarmId: appServicePlan.id
    httpsOnly: true
    siteConfig:{
      appSettings:[
        {
          name: 'TEXT_TO_REPLACE_SUBTITLE_WITH'
          value: textToReplaceSubtitleWith
        }
        {
          name: 'SCM_DO_BUILD_DURING_DEPLOYMENT' 
          value: 'true'
        }
        {
          name: 'WEBSITE_NODE_DEFAULT_VERSION'
          value: '~20'
        }
      ]
      publicNetworkAccess: 'Enabled'
    }
  }
}

resource deploymentCredentials 'Microsoft.Web/sites/sourcecontrols@2023-01-01' = {
  parent: appService
  name: 'web'
  properties: {
    repoUrl: 'https://github.com/PatCer/DevOpsPaketeRepo.git'
    branch: repositoryBranch
    isManualIntegration: true
  }
}

//resource sourceControl 'Microsoft.Web/sites/sourcecontrols@2021-02-01' = {
//  parent: appService
//  name: 'web' 
//  properties: {
//    //repoUrl: 'https://github.com/PatCer/DevOpsPaketeRepo.git'
//    branch: 'main'
//    isManualIntegration: false
//    //token: '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'
//  }
//}
