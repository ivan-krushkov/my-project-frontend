FROM nginx:1.21.5-alpine

RUN rm -rf /usr/share/nginx/html/*

COPY nginx/nginx.conf /etc/nginx/nginx.conf

COPY /dist/my-dream-app /usr/share/nginx/html

CMD ["nginx", "-g", "daemon off;"]
