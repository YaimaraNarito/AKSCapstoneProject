# AKSCapstoneProject

## Description
Project utilizes AKS to host a docker container with a node.js application

## Table of Contents

- [Links](#links)
- [Installation](#installation)
- [Usage](#usage)
- [License](#license)
- [Contributing](#contributing)
- [Questions](#questions)

 ## Links
https://github.com/davidschepis/AKSCapstoneProject


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
 1. Login using az login
 2. Create namespaces deveopment, qa, staging, production
 3. Create the cluster:

    Run Terraform commands
    ```
    terraform init
    terraform validate
    terraform plan -out tfplan.out
    terraform apply tfplan.out
    ```
 4. Login to cluster using
     ```
     az aks get-credentials --resource-group aks-rg3 --name aks-cluster
     ```
 5. Create a Project on dev.azure.com
 6. Create build pipeline connected to github repo associated with code source, link to Azure subscription
 7. Create release pipeline with artifact and stages (development, qa, staging, production)

 ## License
This project is not licensed

 ## Contributing
Please contact us if you wish to contribute

 ## Questions
Contributors

[davids.developer@outlook.com](mailto:davids.developer@outlook.com)
Github Repo: [davidschepis](https://github.com/davidschepis).

[ha.cki@hotmail.es](mailto:ha.cki@hotmail.es)
Github Repo: [liuvis05](https://github.com/liuvis05).

[yaimara.r.nar@gmail.com](mailto:yaimara.r.nar@gmail.com)
Github Repo: [YaimaraNarito](https://github.com/YaimaraNarito).

[lexington.Johnson@icloud.com](mailto:lexington.johnson@icloud.com)
Github Repo: [Notgnixel](https://github.com/Notgnixel).


