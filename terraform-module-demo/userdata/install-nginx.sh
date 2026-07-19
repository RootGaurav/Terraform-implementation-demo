#!/bin/bash

sudo apt update -y

sudo apt install nginx -y

sudo systemctl enable nginx

sudo systemctl start nginx

echo "<h1>Terraform EC2 Module</h1>" > /usr/share/nginx/html/index.html