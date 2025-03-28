# Terraforms

This repository contains my terraform configurations for managing infrastructure as code.

**Note**: It only supports Microsoft Azure.

## Project Structure

```
/
├── envs/mini/                 # Main Terraform configuration files
├─────── variables.tf     # Input variables definition
├─────── outputs.tf       # Output values
├─────── provider.tf      # Provider configuration 
├── modules/              # Reusable Terraform modules
├─────── compute/         # Azure compute resource module
├─────── networking/      # Azure network resources module
└─────── constants/       # Several useful constants
```

## Prerequisites

- [Terraform](https://www.terraform.io/) installed on your system.
- Access to the cloud provider's CLI and credentials.

## Usage

1. Initialize the Terraform working directory:
    ```bash
    terraform init
    ```

2. Review the execution plan:
    ```bash
    terraform plan
    ```

3. Apply the configuration to create resources:
    ```bash
    terraform apply
    ```

4. Destroy resources when no longer needed:
    ```bash
    terraform destroy
    ```

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.
