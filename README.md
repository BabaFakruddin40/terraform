# 🌍 Learning Terraform: Infrastructure as Code (IaC)

This repository serves as a personal laboratory for mastering **Terraform**. It tracks my progress from basic resource provisioning to advanced state management and modular design.

## 📚 Table of Contents

* [Core Concepts](https://www.google.com/search?q=%23core-concepts)
* [Project Structure](https://www.google.com/search?q=%23project-structure)
* [Essential Commands](https://www.google.com/search?q=%23essential-commands)
* [The Terraform Lifecycle](https://www.google.com/search?q=%23the-terraform-lifecycle)
* [Best Practices](https://www.google.com/search?q=%23best-practices)

---

## 🧠 Core Concepts

Before writing code, I am focusing on these four pillars:

1. **Providers:** Plugins that allow Terraform to interact with APIs (Azure, AWS, GCP, etc.).
2. **State:** How Terraform keeps track of the relationship between your configuration and real-world resources.
3. **Variables & Outputs:** Making configurations reusable and extracting useful data (like IP addresses).
4. **Modules:** Containers for multiple resources that are used together.

---

## 📂 Project Structure

Standardizing the file layout is key to avoiding "spaghetti code."

```text
.
├── modules/              # Reusable components
│   └── networking/       # VNET/Subnet configurations
├── environments/         # Environment-specific values
│   ├── dev.tfvars
│   └── prod.tfvars
├── main.tf               # Primary entry point
├── variables.tf          # Input variable definitions
├── outputs.tf            # Data to be printed after apply
├── providers.tf          # Provider & Backend configuration
└── README.md             # This file!

```

---

## 🛠 Essential Commands

These are the commands I use daily:

| Command | Purpose |
| --- | --- |
| `terraform init` | Initializes the working directory and downloads providers. |
| `terraform plan` | Shows what changes will be made without actually applying them. |
| `terraform apply` | Executes the plan to reach the desired state. |
| `terraform destroy` | Tears down all infrastructure managed by the configuration. |
| `terraform fmt` | Rewrites config files to a canonical format and style. |
| `terraform validate` | Checks whether the configuration is syntactically valid. |

---

## 🔄 The Terraform Lifecycle

1. **Write:** Define your infrastructure in HCL (HashiCorp Configuration Language).
2. **Plan:** Preview changes to ensure they match your expectations.
3. **Apply:** Deploy the infrastructure.
4. **Manage:** Update or scale your resources as needed.

---

## 🌟 Best Practices I'm Following

* **Version Control:** Never commit `.tfstate` files to Git (always use `.gitignore`).
* **Remote State:** Use Azure Blob Storage or AWS S3 for state files to allow team collaboration.
* **Locking:** Ensure state locking is enabled to prevent concurrent executions.
* **Dry Runs:** Always run `terraform plan` before applying.
* **Small Changes:** Iterate in small batches rather than massive "big bang" deployments.

---

## 🚀 Useful Resources

* [Official Terraform Documentation](https://www.google.com/search?q=https://developer.hashicorp.com/terraform/docs)
* [Terraform Registry](https://registry.terraform.io/)

---

This README will evolve as I continue to learn and experiment with Terraform. Stay tuned for updates!
