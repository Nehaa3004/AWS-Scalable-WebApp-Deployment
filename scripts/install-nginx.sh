#!/bin/bash

# Update package list
sudo apt update -y

# Install Nginx
sudo apt install nginx -y

# Enable Nginx
sudo systemctl enable nginx

# Start Nginx
sudo systemctl start nginx

# Display Nginx status
sudo systemctl status nginx

echo "========================================="
echo "Nginx installation completed successfully"
echo "========================================="