# Deployment Steps

This document outlines the steps followed to deploy a scalable web application on AWS using Amazon EC2, Application Load Balancer (ALB), Auto Scaling Groups (ASG), IAM, CloudWatch, and Amazon S3.

---

## Prerequisites

- AWS Account
- IAM User with required permissions
- SSH Key Pair
- Amazon EC2
- Basic Linux knowledge

---

## Step 1: Launch an EC2 Instance

- Launch an Ubuntu EC2 instance.
- Select an appropriate instance type (t2.micro for testing).
- Configure Security Groups to allow:
  - SSH (22)
  - HTTP (80)
  - HTTPS (443) (optional)

---

## Step 2: Connect to the EC2 Instance

```bash
ssh -i <key-pair>.pem ubuntu@<public-ip>
```

---

## Step 3: Install the Web Server

Update the system packages.

```bash
sudo apt update
```

Install Nginx.

```bash
sudo apt install nginx -y
```

Enable and start the service.

```bash
sudo systemctl enable nginx
sudo systemctl start nginx
```

Verify installation.

```bash
systemctl status nginx
```

---

## Step 4: Deploy the Web Application

- Copy the website files to the web server.
- Verify the application using the EC2 Public IP.

---

## Step 5: Create an AMI

- Create an Amazon Machine Image (AMI) from the configured EC2 instance.
- The AMI is used by the Auto Scaling Group to launch additional instances.

---

## Step 6: Create a Launch Template

Configure:

- Amazon Machine Image (AMI)
- Instance Type
- Security Group
- Key Pair
- IAM Role

---

## Step 7: Create an Auto Scaling Group

Configure:

- Minimum Capacity
- Desired Capacity
- Maximum Capacity
- Launch Template
- Health Checks

---

## Step 8: Create an Application Load Balancer

Configure:

- Internet-facing Load Balancer
- Listener on Port 80
- Target Group
- Health Check Path

---

## Step 9: Register EC2 Instances

Attach the Auto Scaling Group to the Target Group.

Verify all targets are healthy.

---

## Step 10: Configure Monitoring

Enable Amazon CloudWatch monitoring for:

- CPU Utilization
- Network Traffic
- Instance Health
- Auto Scaling Events

---

## Security Configuration

- IAM Roles configured using the principle of least privilege.
- Security Groups configured to allow only required traffic.
- Health Checks enabled for application availability.

---

## Result

The web application successfully handled incoming traffic through the Application Load Balancer while Auto Scaling Groups provided scalability and high availability. Amazon CloudWatch was used to monitor infrastructure performance and application health.