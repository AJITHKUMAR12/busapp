# Use the official Nginx image as the base image
FROM nginx:latest

# Copy custom Nginx configuration file (if any)
# Uncomment the following line if you have a custom nginx.conf
# COPY ./nginx.conf /etc/nginx/nginx.conf

# Copy custom HTML files into the Nginx HTML directory
# Replace 'index.html' with your custom file if you have one
COPY ./html /usr/share/nginx/html

# Expose port 80 to access Nginx
EXPOSE 80

# Start Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]

