# HUG Terraform Lagos/Ibadan Challenge

## Week Three Project: Deploy a Two-tier application on AWS

**Objective:** Provision a secure, two-tier environment on a cloud platform using Terraform that follows infrastructure best practices..

## Project Requirements

provision:

- A custom VPC 
- A Public Subnet
- A Private Subnet
- An Internet Gateway
- A NAT Gateway
- Public & Private route tables & associations
- remote backend. in this case s3 on AWS
- A Security Group allowing SSH (22) from your IP to the compute instance
- A Security Group allowing HTTP (80) traffic from the internet to your web page
- A Compute instance in the public subnet
- A database instance in the private subnet
- A Compute instance boot script to install nginx, serve an HTML page, and display the challenge title

---

## Project Workflow

1. build your deployment plan with modules in mind
2. Write IAC in different `.tf` files
3. Run `terraform init`
4. Run `terraform plan`
5. Run `terraform apply`
6. Run `terraform destroy`

## Screenshots

1. db
2. nginx webpage
3. s3 storage bucket
4. vpc
5. outputs
6. db creaton error

## NOTE

1. This was built with infrastructure best practices.
---
