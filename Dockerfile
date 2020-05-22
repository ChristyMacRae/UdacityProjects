FROM python:stretch

COPY . /app
WORKDIR /app

RUN apt-get update -y
RUN pip install --upgrade pip 
RUN pip install flask
RUN pip install gunicorn 
RUN pip install pyjwt
RUN pip install pytest

ENTRYPOINT ["gunicorn","-b",":8080","main:APP"]

