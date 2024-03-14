This repository contains deployment scripts and configurations for deploying IoT applications to different environments using Azure resources.

### File Structure

- **Deploy.ps1**: PowerShell script for deploying IoT applications to different environments (dev, test, main).
- **IoTMessageResourceTemplate.bicep**: Bicep file defining Azure resources for IoT applications.
- **parameters.dev.json**: JSON file containing parameters for the development environment.
- **parameters.test.json**: JSON file containing parameters for the testing environment.
- **parameters.json**: JSON file containing parameters for the main (production) environment.
- **TestScript.ps1**: PowerShell script for testing message delivery in different environments.

### IoTMessageResourceTemplate.bicep

This Bicep file defines Azure resources required for IoT applications, including:

- Storage Account
- Blob Container
- IoT Hub
- Azure Functions

### Deploy.ps1

This PowerShell script facilitates the deployment of IoT applications to various environments. It accepts an environment parameter to specify the target environment.

#### Usage:

```.\Deploy.ps1 -environment <environment>```

Replace `<environment>` with 'dev', 'test', or 'main' depending on the target environment.

### TestScript.ps1

This PowerShell script tests message delivery in different environments. It sends a test message to the IoT Hub and verifies its delivery by checking the associated blob storage.

#### Usage:

```.\TestScript.ps1 -branch <branch>```

Replace `<branch>` with 'dev', 'test', or 'main' to test message delivery in the corresponding environment.

### Note

- Before executing deployment scripts, ensure you have appropriate permissions and necessary configurations in your Azure environment.
- Customize parameters and configurations as per your project requirements.
- Review Azure documentation for detailed information on each resource type and associated configurations.
