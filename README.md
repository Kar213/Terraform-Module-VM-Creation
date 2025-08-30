# Terraform-Module-VM-Creation
This repository will help you to create a terraform modules to automate the creation of the azure Virtual Machine with proper Reusability .
🚀 Terraform Module for Azure VM Creation








📌 Overview

This project provides an automated Infrastructure-as-Code (IaC) solution to create a Virtual Machine in Azure using Terraform.
It eliminates manual steps in the Azure Portal and enables repeatable, consistent, and version-controlled deployments.

🛠 Features

✅ Creates a Resource Group

✅ Deploys a Virtual Network & Subnet

✅ Provisions a Network Security Group (NSG) with rules

✅ Creates a Public IP & Network Interface

✅ Deploys a Linux Virtual Machine (Ubuntu)

✅ Supports variable-based customization

📂 Folder Structure
azure-tf-vm/
│── main.tf          # Main Terraform configuration  
│── variables.tf     # Input variables  
│── outputs.tf       # Output values  
│── provider.tf      # Azure provider setup  
│── terraform.tfvars # User-defined variable values  
│── .gitignore       # Ignored files (state, secrets, etc.)  
│── README.md        # Project documentation  

⚙️ Prerequisites

Before running, ensure you have:

Terraform
 ≥ 1.3

Azure CLI

An active Azure subscription

Git installed

🚀 Usage
1️⃣ Clone the Repository
git clone https://github.com/Kar213/Terraform-Module-VM-Creation.git
cd Terraform-Module-VM-Creation

2️⃣ Authenticate with Azure
az login

3️⃣ Initialize Terraform
terraform init

4️⃣ Plan the Deployment
terraform plan

5️⃣ Apply and Deploy VM
terraform apply -auto-approve

6️⃣ Destroy (Optional)
terraform destroy -auto-approve

📊 Workflow Diagram
flowchart TD
    A[Terraform Init] --> B[Terraform Plan]
    B --> C[Terraform Apply]
    C --> D[Azure Resources Created]
    D --> E[VM Ready to Use]
    C --> F[Terraform Destroy]
    F --> G[Azure Resources Removed]

🔑 Example Variables (terraform.tfvars)
resource_group_name = "FreeTierResourceGroup"
location            = "CentralIndia"
vm_name             = "FreeTierUbuntuVM"
admin_username      = "azureuser"
admin_password      = "MySecureP@ssw0rd123!"
vm_size             = "Standard_B1s"

📝 Outputs

After deployment, Terraform will display:

🌐 Public IP of the VM

🖥 VM Name & ID

📍 Resource Group & Location

🤝 Contribution

Fork the repo 🍴

Create your feature branch (git checkout -b feature-name)

Commit changes (git commit -m "Added feature")

Push branch (git push origin feature-name)

Create Pull Request ✅

📜 License

This project is licensed under the MIT License.
Feel free to use and modify 🚀
