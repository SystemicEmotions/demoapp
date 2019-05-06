FROM nginx

COPY html /usr/share/nginx/html

CMD ["./wrapper.sh"]
