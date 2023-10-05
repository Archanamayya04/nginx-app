# Use the official Ubuntu image as the base image
FROM ubuntu:latest

# Update the package repository and install NGINX
RUN apt-get update && apt-get install -y nginx

# Copy your HTML file to the NGINX document root
COPY index.html /usr/share/nginx/html/index.html
COPY index.html /var/www/html/index.nginx-debian.html

# Expose port 80 to allow incoming HTTP traffic
EXPOSE 80

# Start NGINX when the container is run
CMD ["nginx", "-g", "daemon off;"]

