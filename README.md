# AKSCapstoneProject

## Description
Project utilizes AKS to host a docker container with a node.js application

## Table of Contents

- [Links](#links)
- [Installation](#installation)
- [Usage](#usage)
- [Screenshots](#screenshots)
- [License](#license)
- [Contributors](#contributors)

 ## Links
https://github.com/YaimaraNarito/AKSCapstoneProject


 ## Installation
To install necessary dependencies, run the following command:

```
Please install the Azure CLI and Kubectl
https://docs.microsoft.com/en-us/cli/azure/
https://kubernetes.io/docs/tasks/tools/

As well as Docker and Terraform
https://docs.docker.com/get-docker/
https://www.terraform.io/downloads
```

 ## Usage
 1. Create github repo and clone all files into it
 2. Login to Azure on command line using: 
    ```
    az login
    ```
 3. Create namespaces deveopment, qa, staging, production:
    ```
    kubectl create ns development
    kubectl create ns qa
    kubectl create ns staging
    kubectl create ns production
    ```
 4. Create the cluster:

    Run Terraform commands
    ```
    terraform init
    terraform validate
    terraform plan -out tfplan.out
    terraform apply tfplan.out
    ```
 5. Login to cluster using:
     ```
     az aks get-credentials --resource-group aks-rg3 --name aks-cluster
     ```
 6. Create a Project on dev.azure.com
 7. Create build pipeline connected to github repo associated with code source, link to Azure subscription
 8. Create release pipeline with artifact and stages (development, qa, staging, production)

 ## Screenshots


 ## License
This project is not licensed

 ## Contributors

[davids.developer@outlook.com](mailto:davids.developer@outlook.com)
Github Repo: [davidschepis](https://github.com/davidschepis).

[ha.cki@hotmail.es](mailto:ha.cki@hotmail.es)
Github Repo: [liuvis05](https://github.com/liuvis05).

[yaimara.r.nar@gmail.com](mailto:yaimara.r.nar@gmail.com)
Github Repo: [YaimaraNarito](https://github.com/YaimaraNarito).

[lexington.Johnson@icloud.com](mailto:lexington.johnson@icloud.com)
Github Repo: [Notgnixel](https://github.com/Notgnixel).


