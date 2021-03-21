FROM python:3.9.2-alpine3.13
MAINTAINER Prashaint Kumar Mishra

ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

RUN mkdir /apps
WORKDIR /apps
COPY ./apps /apps

RUN adduser -D prashaint
USER prashaint

