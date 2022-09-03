FROM nginx:1.23.1-alpine AS reverse_proxy
COPY ./main.conf /etc/nginx/conf.d
RUN rm /etc/nginx/conf.d/default.conf
EXPOSE 80/tcp
EXPOSE 443/tcp
CMD ["/usr/sbin/nginx", "-g", "daemon off;"]
