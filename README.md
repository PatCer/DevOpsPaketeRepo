# DevOps:
<p align="center">
<img src="https://de.libelle.com/media/images/Grafik_DevOps.width-500.png" height="350">
</p>

## What is DevOps:
    DevOps is a methodology used by Developer and IT Operations to cut the life cycle of development operations
    by having the dev and ops teams work together by sharing feedback and automating their work processes
    Procedures:
    
      Continous Integration:
          CI is when the Code Changes get commited automatically in a zentral repo and get tested there.
          
      Continous Deployment:
          After the Tests go through it gets deployed
          
      Continous Delivery:
          The Automnation of Building, Testing, Configurating and Deploying a Repo
          
<p align="center">
<img src="https://www.agile-im.de/wp-content/uploads/2023/03/ml-und-devops-pipeline.png" height="350">
</p>

## What is IOT(Internet of Things):
    A Network containing physical devices with sensores, software etc. that is connected to the Internet
    
## What is Bicep:
    Bisep is a DSL (Domain Specific Language) that is used to deploy azure resources
    
    Benefits:
      -Support for all resource types and API versions
      -simple syntax
      -repeatable results
      -Modularity
      -Integration with Azure services
      -Preview changes
      -No state or state files to manage (All of it is in Azure)
      -No cost and open Source 
      
## Azure Subscriptions:
    Azure is pay-per-use so you only pay for the things that you have used.
    
## Resource Groups:
    Azure Resource Groups are Groups of Resources such as VMs, Servers, Containers...
    These are used to manage the Resources centrally
    
## Storages:

    Blob Storage:
        Stores Objects as Bytes and is used to store unstructured data.
        
    File Storage:
        A fully configured Cloud-Data-Storage for more than one user.
        Is mostly used to store small amounts of Data on which many users have access to.
        
    Queue Storage:
        Stores Reports that have to be worked with asyncronely.
        Per Report 64KB and is mostly Used for taking many user interactions like online shopping.
        
    Table Storage:
        Stores a big amount of Structured and renational Data in the Cloud.
        
    Disk Storage:
        Stores Data on an allocated Hard Drive    
        
## Git
    Git is a Distributed Version Control System (DVCS) that is used for tracking changes in source code that 
    helps Developers work better together and distribute changes in code.
    
    Pull Request:
      In Git A pull request is a Request made by a developer to get their code commited to the online repository.
      
    Branch:
      A branch is when a dev creates another branch of code on which he works, which means that when he commits 
      this branch it will not ovverride the main code but will be saved separately. In this way multiple people 
      can work on the same Repository but you can always see what changes where made by who and can change it any time.
      
## GitHub
    GitHub is an online service that gives Git a UI and some usefull and easy to use Features. It also is
    a Central Cloud for easy to share Repositories.
    
    Repository:
      Repository is a Location in which code from devs get uploaded to so that it can be shared easily
      
    Action:
      A tool made by GitHub for colaborating on Repos. It is commonly used for Easy CI/CD etc.
      
    Service Principal:
      An Azure service principal is an identity created for use with applications, hosted services, and
      automated tools to access Azure resources
      
## Azure Resources to host a Website:
    
    Virtual Machines
    Virtual Machine, is one of Microsoft's first cloud services. Where you have control over everything
    from the hardware to the operating system and applications. This can be useful if you have special 
    requirements, such as support for legacy applications or runtime stacks, or additional dependencies
    or custom scripts that you need to run. The downside, however, is that you have to manage the entire
    stack from start to finish. And what about high availability and load balancing? You have to take care
    of that too.
    
    Azure App Service
    While virtual machines provide full access and support for almost any solution or dependency, Azure App
    Service is more limited. However, it is a fully managed hosting environment, which means you have much
    less to manage. With Azure App Service Web Apps, you can easily integrate manual or automated
    development platforms like GitHub to publish your code and many standard features are available
    with just a few clicks. The platform is designed to support modern, highly scalable web applications
    that take much less effort to manage.
    
    Azure Functions
    While you won't be running full MVC web applications with Azure Functions, you can definitely
    expose APIs. Azure Functions is considered a "serverless" technology. If you have a small
    piece of code that you need to run in response to a trigger (think "event-driven architecture"),
    Azure Functions might be a good option. You only pay for the execution time and resources,
    and it supports multiple languages.
    
    Container in Azure
    Firstly, it's good to know that Azure App Service or Azure Functions support containers.
    If you're building a solution that requires specific dependencies or languages that aren't
    supported by Azure App Service or Azure Functions, you can deploy your solution with a 
    custom Docker container. Azure also offers several container-specific services. With
    Azure Container Instances, for example, you can quickly deploy simple containerised
    solutions. If your solution requires advanced monitoring, scaling and orchestration.

## IoT Resource:
    An IoT hub is a central platform that facilitates communication between IoT devices and the cloud. It collects, processes, and transmits data from various devices, ensuring secure and efficient bidirectional communication. Key functions include data ingestion, processing, and implementing security measures. IoT hubs play a pivotal role in managing large-scale device connectivity and contribute to the overall reliability and scalability of IoT ecosystems.
