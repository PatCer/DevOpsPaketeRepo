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
    
    Container
    Firstly, it's good to know that Azure App Service or Azure Functions support containers.
    If you're building a solution that requires specific dependencies or languages that aren't
    supported by Azure App Service or Azure Functions, you can deploy your solution with a 
    custom Docker container. Azure also offers several container-specific services. With
    Azure Container Instances, for example, you can quickly deploy simple containerised
    solutions. If your solution requires advanced monitoring, scaling and orchestration.
