# Use the official Nginx image as the base image
FROM nginx

# Remove the default Nginx static content
RUN rm -rf /usr/share/nginx/html/*

# Copy the current directory contents (your website files) to Nginx's web directory
COPY . /usr/share/nginx/html

# Expose port 80 to the outside world
EXPOSE 443

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
