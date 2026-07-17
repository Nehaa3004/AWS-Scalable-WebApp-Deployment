# 🚀 AWS-Scalable-WebApp-Deployment

Scalable Web Application Deployment on AWS using **Amazon EC2, Application Load Balancer, Auto Scaling Groups, IAM, CloudWatch, and Amazon S3**.

---

# 📖 Project Overview

This project demonstrates the deployment of a scalable and highly available web application on Amazon Web Services (AWS). The infrastructure is designed using core AWS services to ensure reliability, fault tolerance, secure access, and automated scaling based on application demand.

The application is deployed on Amazon EC2 instances behind an Application Load Balancer (ALB), with Auto Scaling Groups managing capacity automatically. Monitoring is implemented using Amazon CloudWatch, while IAM roles and Security Groups provide secure access control following AWS best practices.

---

## 🏗️ Architecture Diagram

<p align="center">
  <img src="architecture/architecture-diagram.png" alt="AWS Architecture Diagram" width="100%">
</p>

---

## ☁️ AWS Services Used

- Amazon EC2
- Application Load Balancer (ALB)
- Auto Scaling Groups
- AWS IAM
- Amazon CloudWatch
- Amazon S3
- Security Groups

---

## ✨ Features

- Deploy web applications on Amazon EC2
- Distribute traffic using an Application Load Balancer
- Configure Auto Scaling for high availability
- Secure infrastructure using IAM Roles and Security Groups
- Monitor infrastructure with Amazon CloudWatch
- Apply AWS best practices for scalability and fault tolerance

---

## 📂 Project Structure

```text
AWS-Scalable-WebApp-Deployment/
├── README.md
├── architecture/
│   └── architecture-diagram.png
├── documentation/
│   └── deployment-steps.md
└── scripts/
    └── install-nginx.sh
```

---

## 📸 Project Evidence

The AWS infrastructure was created and tested during project implementation. To avoid ongoing AWS charges, the cloud resources were decommissioned after successful validation.

This repository includes:

- Architecture Diagram
- Deployment Documentation
- Setup Script
- Infrastructure Overview

---

## ⚙️ Deployment Guide

Detailed deployment steps are available in:

```text
documentation/deployment-steps.md
```

---

## 🔐 Security

- IAM Roles
- Security Groups
- Health Checks
- Least Privilege Access

---

## 📊 Monitoring

Amazon CloudWatch was used to monitor:

- CPU Utilization
- Network Traffic
- Instance Health
- Auto Scaling Events

---

## 🚧 Challenges Faced

- Configuring Application Load Balancer health checks
- Understanding Auto Scaling capacity settings
- Managing IAM permissions securely
- Monitoring infrastructure using CloudWatch

---

## 🚀 Future Improvements

- Provision infrastructure using Terraform
- Implement CI/CD with GitHub Actions
- Configure HTTPS using AWS Certificate Manager
- Deploy across multiple Availability Zones

---

## 👩‍💻 Author

**Neha Pawar**

AWS Certified Solutions Architect – Associate

GitHub: https://github.com/Nehaa3004