FROM nginx:latest

# Configuration
RUN rm -rf /etc/nginx/conf.d/
COPY ./sites /etc/nginx/conf.d/

# Copy static webpages to container
COPY ./static /static/

CMD ["nginx", "-g", "daemon off;"]