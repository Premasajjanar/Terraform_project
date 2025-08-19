# 🚀 Terraform Project: Deploying a Static Website on AWS S3

This project uses **Terraform** to provision and manage AWS infrastructure for deploying a static website. It automates the creation of an S3 bucket, uploads static website files (like `index.html`, `error.html`), and configures the bucket for public web hosting.

---

## 📁 Project Structure

Terraform_project/
│
├── index.html # Main HTML file for the website
├── error.html # Custom error page
├── provider.tf # Defines AWS provider
├── s3.tf # Terraform script to create S3 bucket and policies
├── variables.tf # Input variables for region, bucket name, etc.
├── output.tf # Outputs like website endpoint
├── terraform.tfstate # Terraform state file (not pushed to GitHub)


---

## ⚙️ Technologies Used

- **Terraform v1.0+**
- **AWS S3**
- **AWS CLI (for initial setup)**
- **HTML/CSS** (for simple static pages)

---

## 🌐 Features

- ✅ Creates a new S3 bucket
- ✅ Enables static website hosting on S3
- ✅ Uploads `index.html` and `error.html`
- ✅ Sets bucket policy for public access
- ✅ Outputs the S3 website endpoint

---

## 🚀 How to Deploy

1. **Clone this repository:**
   ```bash
   git clone https://github.com/your-username/simple-terraform-project.git
   cd simple-terraform-project

2. **Initialize Terraform:**
   ```bash
   terraform init
   
3. **Preview the changes:**
   ```bash
   terraform plan

4. **Apply the configuration:**
   ```bash
   terraform apply

5. **To destroy the resources:**
   ```bash
   terraform destroy

⚠️ Make sure your AWS CLI is configured properly with access keys.

## Connect with Me

- [LinkedIn](https://www.linkedin.com/in/prema-sajjanar-0bb316252)
- [GitHub](https://github.com/Premasajjanar)


