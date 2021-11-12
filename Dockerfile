FROM nginx:1.17.1-alpine
COPY /home/monta/my-app/dist /usr/share/nginx/html
EXPOSE 4201
CMD ["nginx" , "-g", "daemon off;"]

