FROM python:3

WORKDIR /usr/src/app

RUN pip install gunicorn

RUN apt-get update && apt-get install nginx -y

COPY ./server.py .
COPY ./nginx.conf /etc/nginx/sites-available/default
COPY ./entrypoint.sh .

RUN chmod +x ./entrypoint.sh


EXPOSE 80

CMD ["./entrypoint.sh"]