FROM nginx:alpine

COPY your-domain.conf /etc/nginx/sites-available/your-domain.conf

COPY ssl/ /etc/nginx/ssl/

RUN ln -s /etc/nginx/sites-available/your-domain.conf /etc/nginx/sites-enabled/

EXPOSE 80 443

CMD ["nginx", "-g", "daemon off;"]
