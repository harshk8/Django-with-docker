FROM python:3.7-alpine
MAINTAINER Dexter Production

ENV PYTHONUNBUTTERED 1

COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

RUN mkdir /app
WORKDIR /app
COPY ./app /app

RUN adduser -D user 
USER user
