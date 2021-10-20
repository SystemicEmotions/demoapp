FROM public.ecr.aws/nginx/nginx:latest

COPY startup.sh /
RUN chmod +x startup.sh
COPY html /usr/share/nginx/html

CMD ["./startup.sh"]
