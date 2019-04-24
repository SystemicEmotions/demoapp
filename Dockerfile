FROM nginx

COPY wrapper.sh /

COPY html /usr/share/nginx/html

RUN chmod +x wrapper.sh
CMD ["./wrapper.sh"]
