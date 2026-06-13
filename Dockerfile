FROM nginx:alpine

# Copy your webpage files
COPY app/index.html /usr/share/nginx/html/

# Copy our template configuration file into Nginx's template folder
COPY nginx.conf /etc/nginx/templates/default.conf.template

# Render or other platforms will automatically inject the $PORT variable here
EXPOSE 80