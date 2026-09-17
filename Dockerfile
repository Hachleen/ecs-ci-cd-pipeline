FROM nginx:latest

# Copy your HTML file into the nginx web root
COPY index.html /usr/share/nginx/html/index.html

# Expose port 80 for ECS / ALB
EXPOSE 80

# Start nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]
