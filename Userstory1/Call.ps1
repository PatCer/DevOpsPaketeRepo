param (
    [string]$environment
)

function DeployToDev {
    Write-Host "Deploying to Dev environment..."
    az deployment group create --resource rg-patrik-cerna --template-file UserStory1\IoTMessageResourceTemplate.bicep --parameters UserStory1\parameters.dev.json --confirm-with-what-if
}

function DeployToTest {
    Write-Host "Deploying to Test environment..."
    az deployment group create --resource rg-patrik-cerna --template-file UserStory1\IoTMessageResourceTemplate.bicep --parameters UserStory1\parameters.test.json --confirm-with-what-if
}

function DeployToMain {
    Write-Host "Deploying to Main environment..."
    az deployment group create --resource rg-patrik-cerna --template-file UserStory1\IoTMessageResourceTemplate.bicep --parameters UserStory1\parameters.json --confirm-with-what-if
}

# Main script logic
if ($environment -eq 'dev') {
    DeployToDev
}
elseif ($environment -eq 'test') {
    DeployToTest
}
elseif ($environment -eq 'main') {
    DeployToMain
}
else {
    Write-Host "Invalid environment parameter. Please use 'dev', 'test', or 'main'."
}