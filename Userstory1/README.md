ö# Azure Resources to host a Website:
    
#### Virtual Machines
Microsoft's Virtual Machine provides full control for specialized needs, such as
legacy app support, but entails managing the entire stack, including considerations
for high availability and load balancing.

#### Azure App Service
Azure App Service offers a fully managed hosting environment, simplifying management.
With Web Apps, integration with platforms like GitHub is seamless, and standard 
features are readily available, making it ideal for modern, scalable web applications.

#### Azure Functions
Azure Functions allows API exposure and operates as a "serverless" technology for
event-driven tasks. It's cost-efficient, supporting various languages, ideal for
small code executions triggered by events.

#### Container

Azure App Service and Azure Functions support containers for custom solutions.
Azure Container Instances enable quick deployment, while advanced features
are available through other Azure container services.

#### Static Web App
A static web app serves pre-rendered HTML, CSS, and JavaScript directly to
clients, without server-side processing. Ideal for showcasing content,
it's deployed via CDNs for efficient distribution.

# Deployment Documentation

This repository contains deployment scripts and infrastructure as code (IaC) files
for deploying an application named `AppointmentApplicationUserStory1` to different
environments using Azure resources.

### Bicep File

The `IoTMessageResourceTemplate.bicep` file defines Azure resources required for
deploying the `AppointmentApplicationUserStory1` application. The resources include:

- **Azure App Service Plan**: Defines the compute resources for hosting the web application.
- **Azure App Service**: Defines the web application itself, along with its configurations
such as HTTPS enforcement, application settings, and network access.
- **Deployment Credentials**: Defines the source control integration for the web application
deployment.

### PowerShell File

The PowerShell script `deploy.ps1` facilitates the deployment of the application to
different environments (dev, test, main). It accepts an environment parameter to
specify the target environment.

#### Parameters:
- `$environment`: Specifies the target environment for deployment (dev, test, main).

#### Functions:
- **DeployToDev**: Deploys the application to the development environment.
- **DeployToTest**: Deploys the application to the testing environment.
- **DeployToMain**: Deploys the application to the main (production) environment.

#### Main Script Logic:
- The script checks the provided `$environment` parameter and triggers the deployment 
accordingly.
- If an invalid environment is provided, it displays an error message.

### Usage

To deploy the application to a specific environment, execute the PowerShell script 
`deploy.ps1` with the appropriate environment parameter.

Example:
```.\deploy.ps1 -environment dev```

### Note

Before executing the deployment script, ensure that:
- Azure CLI is installed on your system.
- You are logged in to Azure CLI using appropriate credentials.
- Azure resources such as resource groups and service plans are appropriately 
  configured.

### Important

- This deployment script and associated resources are designed for illustrative 
  purposes and may require customization to suit specific project requirements.
- Exercise caution when deploying to production environments and 
  ensure thorough testing in lower environments.
