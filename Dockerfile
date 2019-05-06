FROM nginx

COPY startup.sh /

COPY html /usr/share/nginx/html

CMD ["./startup.sh"]
