FROM node:lts-buster-slim
RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y nginx
ENV PATH /webapp/node_modules/.bin:$PATH
COPY build/ /var/www/html/
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
