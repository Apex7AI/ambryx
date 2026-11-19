FROM nginx:alpine

COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY index.html /usr/share/nginx/html/index.html
COPY imobiliarias.html /usr/share/nginx/html/imobiliarias.html
COPY shopping.html /usr/share/nginx/html/shopping.html
COPY assets /usr/share/nginx/html/assets

EXPOSE 80
